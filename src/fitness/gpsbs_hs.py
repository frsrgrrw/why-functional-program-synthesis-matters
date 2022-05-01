import json
import subprocess
import sys
import os
import tempfile

from algorithm.parameters import params
from fitness.base_ff_classes.base_ff import base_ff


class gpsbs_hs(base_ff):
    """Fitness function for program synthesis problems. Grammars and datasets
    for 29 benchmark problems from doi.org/10.1145/2739480.2754769 are
    provided. Evaluation is done in a separate Haskell process."""

    # constants required for formatting the code correctly
    INSERTCODE = "<insertCodeHere>"

    def __init__(self):
        # Initialise base fitness function class.
        super().__init__()

        self.training, self.test, self.embed_header, self.embed_footer = \
            self.get_data(params['DATASET_TRAIN'], params['DATASET_TEST'],
                          params['GRAMMAR_FILE'])

        if params['MULTICORE']:
            print("Warming: multi-core is not supported with progsys "
                  "as fitness function.\n"
                  "Fitness function only allows sequential evaluation.")

    def evaluate(self, ind, **kwargs):

        dist = kwargs.get('dist', 'training')

        if dist == "training":
            data = self.training
            timeout = 20  # long timeout for Haskell programs when running concurrently
        else:
            data = self.test
            timeout = 100 # if it gets here it already has fitness 0 so we set it very high so that we don't 'miss' tests

        result = self.compute_individual(ind, data, timeout)

        if 'quality' in result:
            if result['quality'] > sys.maxsize:
                result['quality'] = sys.maxsize

        if 'quality' not in result:
            result['quality'] = sys.maxsize

        return result['quality']

    def compute_individual(self, individual, data, timeout):
        code = self.format_program(individual.phenotype,
                                      self.embed_header, data, self.embed_footer)

        filepath = os.path.join(params['HASKELL_EXEC_DIR'], 'Temp.hs')
        with open(filepath, 'w') as f:
            f.write(code)

        try:
            process = subprocess.run(['runhaskell', '--ghc-arg=-i:hs_lib', filepath],
                                     capture_output=True, text=True, timeout=timeout)
        except subprocess.TimeoutExpired:
            program_output = json.loads('{"error":"timeout"}')
            print("TIMEOUT")
            return program_output

        if process.returncode == 0:
            output = process.stdout

            # change Haskell syntax to Python
            output = output.replace("True", "true")
            output = output.replace("False", "false")

            program_output = json.loads(output)

        else:
            error_list = process.stderr.splitlines()
            try:
                error = error_list[2]
            except IndexError:
                error = 'unknown exception'
            program_output = json.loads('{"error":"Haskell exception: ' + error + '"}')

        try:
            os.remove(filepath)
        except OSError:
            pass

        return program_output

    def format_program(self, individual, header, data, footer):
        """formats the program by formatting the individual and adding
        a header, the data and a footer"""
        return header + f'{individual}\n' + f"\n{data}" + footer

    def get_data(self, train, test, grammar):
        """ Return the training and test data for the current experiment.
        A new get_data method is required to load from a sub folder and to
        read the embed file"""
        train_set = os.path.join("..", "datasets", train)
        test_set = os.path.join("..", "datasets", test)

        embed_file = os.path.join("..", "grammars",
                                  (grammar[:-4] + "-Embed.txt"))
        with open(embed_file, 'r') as embed:
            embed_code = embed.read()
        insert = embed_code.index(self.INSERTCODE)
        embed_header, embed_footer = "", ""
        if insert > 0:
            embed_header = embed_code[:insert]
            embed_footer = embed_code[insert + len(self.INSERTCODE):]
        with open(train_set, 'r') as train_file, \
                open(test_set, 'r') as test_file:
            return train_file.read(), test_file.read(), \
                   embed_header, embed_footer
