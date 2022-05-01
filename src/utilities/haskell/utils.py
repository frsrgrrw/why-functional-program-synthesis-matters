from os import getcwd, makedirs, path

from algorithm.parameters import params


def generate_folders_and_files():
    """
    Generates necessary folders and files for saving statistics and parameters.

    :return: Nothing.
    """

    if params['EXPERIMENT_NAME']:
        if params['HASKELL']:
            params['HASKELL_EXEC_DIR'] = path.join(getcwd(), "hs_exec_dir")

            if not path.isdir(params['HASKELL_EXEC_DIR']):
                makedirs(params['HASKELL_EXEC_DIR'], exist_ok=True)

            if not path.isdir(path.join(params['HASKELL_EXEC_DIR'],
                                        str(params['TIME_STAMP']))):
                makedirs(path.join(params['HASKELL_EXEC_DIR'],
                                   str(params['TIME_STAMP'])), exist_ok=True)

                params['HASKELL_EXEC_DIR'] = path.join(params['HASKELL_EXEC_DIR'],
                                                str(params['TIME_STAMP']))
    else:
        if params['HASKELL']:
            params['HASKELL_EXEC_DIR'] = path.join(getcwd(), "hs_exec_dir")

            if not path.isdir(params['HASKELL_EXEC_DIR']):
                makedirs(params['HASKELL_EXEC_DIR'], exist_ok=True)


