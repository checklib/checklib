# HPC Modules

Installing / using HPC modules.

Advice on reproducible environments is available in the Turing Way book: https://the-turing-way.netlify.com/reproducible_environments/reproducible_environments.html

### Prerequiste knowledge
- [ ] command line basic knowledge

### Module Basic Commands

`module avail` lists the available modules (system-wide and private)

`module use.own` will enable use of private modules

`module load [package(s)]` loads specified modules

`module unload [package(s)]` unloads specified modules

`module list` shows what modules you currently have loaded

`module show [package]` prints the environmental information for a module

### Setting your environment using Module

- [ ] check what libraries/modules your software will depend on
  - [ ] NOTE: dependencies
- [ ] check the available modules on your HPC system
  - [ ] `module load use.own` (if you are using private modules, see below)
  - [ ] `module avail`
  - [ ] NOTE: which modules provide the dependencies you need
- [ ] load the necessary modules
  - [ ] `module load [package(s)]`
- [ ] record the module environment that has been created
  - [ ] `module list`
  - [ ] NOTE: which modules are loaded (including version numbers)

### Creating Private Modules

If your desired libraries are not available in the public modules on your system, then the easiest(?) way to add these is by creating private modules.

#### Initial setup

- [ ] `module load use.own`
- [ ] `module show use.own`
  - [ ] NOTE: the path to your modules directory (e.g. `~/privatemodules`) 

- [ ] create a packages directory for installing the software
  - [ ] `mkdir [path]/privatemodules_packages`
  - [ ] NOTE: the path that you are using (e.g. `~/privatemodules_packages`)

#### Creating module

Create package directory, with subdirectories. You can keep this within other directories, indicating dependencies (e.g. `[root]` could be `gcc` or `intel`). The version of the package you are installing should be noted too (e.g. `[appversion]` could be `1.0.0` or `3.6.4`)

- [ ] `mkdir ~/privatemodules_packages/[root]/[package]`
- [ ] `cd ~/privatemodules_packages/[root]/[package]`
- [ ] `mkdir [appversion] build archive`

Download the software to install, in the `archive` directory, compile this (if needed) in the `build` directory, and then copy the binaries/libraries into `[appversion]`. See example scripts here for how to do these steps: https://github.com/douglowe/hpc_modules_install

- [ ] Downloaded software
  - [ ] NOTE: where did you obtain the software from (and which version)
- [ ] Compile the software
  - [ ] NOTE: what system specific changes have been made to get compilation to work?
- [ ] Copied/prepare binaries/libraries

Create the plain text file which will contain the module configuration information

- [ ] `touch ~/privatemodules/[root]/[package]/[appversion]`
- [ ] add path to package directory, e.g. `set APPDIR ~/privatemodules_packages/[root]/[package]`

