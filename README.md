# Introduction

This repository contains the all relevant materials to perform the experiments presented in [Why Functional Program Synthesis Matters (In The Realm of Genetic Programming)](https://dl.acm.org/doi/10.1145/3520304.3534045) [1]. The experiments are carried out using the [PonyGE2](https://github.com/PonyGE/PonyGE2) GE implementation [2] in the CFG-GP form. The problems are from the [General Program Synthesis Benchmark Suite](https://thelmuth.github.io/GECCO_2015_Benchmarks_Materials/) [3] (note, the data was taken from the PonyGE2 repository).

A persistent copy of the project as used to generate the results in [1] can be found at the Zenodo record [here](https://zenodo.org/record/6499027).

# Requirements

We assume a unix OS, the code was run/tested on Pop_OS!-20.04 (Ubuntu derivative).

Python 3.5 (or higher) is required, Python 3.8.10 was used for the reported results. The Python packages required are: matplotlib, numpy, scipy, scikit-learn (sklearn), pandas, which can be installed as follows via your favourite terminal emulator:

    $ pip install -r requirements.txt

GHC (Glorious Glasgow Haskell Compilation System) version 8.10.7 was used for the reported results. GHC can be installed using the following command and following the instructions:

    $ curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

# Running the experiments performed

You can run all the experiments by executing the experiment script in the src folder

    $ cd src
    $ sh experiments.sh

This will run all the experiments presented in the paper. The results will be written to the automatically generated results folder.

Possible problems: make sure 'runhaskell' is available on your system path.

# License

This work is published under a Creative Commons 4.0 CC-BY [license](CC-BY.markdown). The markdown version of the license was taken from this great [project](https://github.com/idleberg/Creative-Commons-Markdown).

For PonyGE2 see [PonyGE2-LICENSE](PonyGE2-LICENSE) or the [PonyGE2](https://github.com/PonyGE/PonyGE2) repo.

# References

1. Garrow, F., Lones, M.A., and Stewart, R., Why Functional Program Synthesis Matters (In The Realm of Genetic Programming). GECCO '22: Proceedings of the Genetic and Evolutionary Computation Conference Companion. July 2022. ACM.
2. Fenton, M., McDermott, J., Fagan, D., Forstenlechner, S., Hemberg, E., and O'Neill, M. PonyGE2: Grammatical Evolution in Python. arXiv preprint, arXiv:1703.08535, 2017.
3. T. Helmuth and L. Spector. General Program Synthesis Benchmark Suite. In GECCO '15: Proceedings of the Genetic and Evolutionary Computation Conference. July 2015. ACM.