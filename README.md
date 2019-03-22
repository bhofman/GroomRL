[![DOI](https://zenodo.org/badge/159022917.svg)](https://zenodo.org/badge/latestdoi/159022917)

GroomRL: jet grooming through reinforcement learning
====================================================

This repository contains the code and results presented in arXiv:19xx.xxxx.

## Install GroomRL

GroomRL is tested and supported on 64-bit systems running Linux.

Install GroomRL with Python's pip package manager:
```
git clone https://github.com/JetGames/groomrl.git
cd groomrl
pip install .
```

This process will copy the `groomrl` (main program), `groomrl-plot`, `groomrl-apply` and `groomrl-cpp` programs to your environment python path.

We recommend the installation of the GroomRL package using a `miniconda3` environment with the [following packages](https://github.com/JetsGame/groomrl/blob/readme/scripts/environment.yml).

GroomRL requires the following packages:
- python3
- numpy
- [fastjet](http://fastjet.fr/) (compiled with --enable-pyext using g++ and make)
- gym
- matplotlib
- pandas
- keras
- keras-rl
- tensorflow
- json
- gzip
- argparse
- hyperopt (optional)

## Pre-trained models

The final models presented in arXiv:19xx.xxxx are stored in:
- results/groomerW_final: GroomRL model trained on W jets.
- results/groomerTop_final: GroomRL model trained on top jets.

## Input data

All data used for the final models can be downloaded from the git-lfs repository at https://github.com/JetsGame/data.

## Running the code

In order to launch the code run:
```
groomrl <runcard.json> --output <folder> [--plot] [--cpp] [--nev n]
```

This will create a folder containing the result of the fit.

To create diagnostic plots, run with the --plot option or use
```
groomrl-plot <folder> [--nev n]
```
on the previous output folder.

The groomer can also be exported with the --cpp option, or by running
```
groomrl-cpp <folder> [-v]
```

To apply an existing grooming model to a new data set, you can use
```
groomrl-apply <folder> <datafile> [--nev n]
```
which will create a new directory in `<folder>` using the datafile name.

## References

* arXiv:19xx.xxxx, GroomRL paper.
