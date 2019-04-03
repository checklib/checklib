---
title: Conda Environments
section: testing
description: Building / recording Conda Environment setup, for ensuring reproducable environments.
---

# Conda Environments

Building / recording Conda Environment setup, for ensuring reproducable environments.

Advice on reproducible environments is available in the Turing Way book: https://the-turing-way.netlify.com/reproducible_environments/reproducible_environments.html

### Prerequiste knowledge
- [ ] command line basic knowledge

### Setup

Installing Conda / Anaconda on your system.
- [ ] download installation software from https://www.anaconda.com/distribution/, and note below which version you are using (python 3.X is now recommended)
  - [ ] python 2.X
  - [ ] python 3.X
- [ ] install anaconda 
- [ ] check conda is installed (and record version number) `conda --version`


### Usage

Creating a conda environment, and accessing it.
- [ ] `conda create --name [project_name] [optional_package_list]`
- [ ] `conda activate [project_name]`

Adding new packages to your environment

- [ ] `conda install -c [channel_name] [package_name]`



### Environment Recording

The conda environment setup can be saved as a YAML file.

- [ ] `conda env export > environment.yml`



