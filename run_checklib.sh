#!/bin/sh

# Provide help information if the command line tool is run either without an argument or with the --help argument 
if [ $# -eq 0 ] || [ "$1" == "--help"]
then
    echo 'This is the checklib tool'
    echo 'To install the direred checklists in your repo run this script with the names of the checklists you want to include as arguments.'
    echo 'To list the available checlists do ./run_checklib --ls_lists'
    exit 0
fi

