---
title: Conda Environments
section: reproducible-computational-environments
description: Building / recording Conda Environment setup, for ensuring reproducable environments.
---

# Conda Environments

Building / recording Conda Environment setup, for ensuring reproducable environments.

Advice on reproducible environments is available in the Turing Way book: https://the-turing-way.netlify.com/reproducible_environments/reproducible_environments.html

- [ ] [prerequiste knowledge](#prerequiste-knowledge)
- [ ] [setup conda](#setup-conda)



### Prerequiste knowledge
- [ ] command line basic knowledge

### Setup Conda

Installing Conda / Anaconda on your system.
- [ ] download installation software from https://www.anaconda.com/distribution/, and note below which version you are using (python 3.X is now recommended)
  - [ ] python 2.X
  - [ ] python 3.X
- [ ] install anaconda 
- [ ] check conda is installed (and record version number) `conda --version`
  - [ ] NOTE version: 


### Create Environment / Install Packages

Creating a conda environment, and installing/updating packages.
- [ ] `conda create --name [environ_name] [optional_package_list]`
  - [ ] NOTE environ_name:
  - [ ] NOTE package_list:
- [ ] `conda activate [environ_name]`

Adding new packages to your environment (specifying the channel `-c [channel_name]` is optional.)

- [ ] `conda install -c [channel_name] [package_name]`
  - [ ] NOTE package and version:
  - [ ] NOTE package and version:



### Environment Recording

The conda environment setup can be saved as a YAML file. This is useful to do at regular intervals, as packages versions can be updated (and installing new packages can cause supporting packages to be changed to a different version too).

- [ ] `conda env export > environment_[channel_name]_[date].yml`
  - [ ] UPLOAD environment_[channel_name]\_[date].yml



### Updating Conda / Packages

Not advised for reproducable environments, but if you must then before updating conda, or the environment, you should note the current (working?) setup first.
