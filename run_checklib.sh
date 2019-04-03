#!/bin/sh

# Provide help information if the command line tool is run either without an argument or with the --help argument 
if [ $# -eq 0 ] || [ "$1" == "--help" ]
then
    echo 'This is the checklib tool'
    echo 'To install the direred checklists in your repo run this script with the names of the checklists you want to include as arguments.'
    echo 'To list the available checlists do ./run_checklib --ls_lists'
    exit 0 
elif [ "$1" == "--ls_lists" ] # Provide a list of the available checklist if the --ls_lists argument is supplied
then
    # Go into the library of checklists
    cd library

    # Go through each directory in the library
    # Each directory contains checklists on a certain subject
    for subject in `find . -type d`
    do
        # Only look in directories with subjects longer than 2 characters. 
        # This prevents hidden git directories getting into the mix
        if [ ${#subject} -gt 2 ]
        then 
            # Print the subject of the checklists in the directory
            echo
            echo  'Checklists on' "${subject:2:${#subject}}"  ':'

            # Go into this subjects directory of checklists
            cd "${subject:2:${#subject}}" 

            # Print the checklists on this subject
            for checklist in `ls -f *.md`
            do
                echo '   ' $checklist
            done

            # Return to the subjects directory
            cd ..
       fi

    done

    exit 0
else
    echo 'copy the files'
fi












