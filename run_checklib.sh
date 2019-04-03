#!/bin/sh

usage()
{
    echo "This is the checklib tool. It should be run with the prefix bash"
    echo "To install the desired checklists in your repo run this script with the names of the checklists you want to include as arguments."
    echo "You must also specify whether you're using GitHub or GitLab as your hosting service with the --github or --gitlab flags."
    echo "To list the available checklists do ./run_checklib --ls_lists"
    echo "For example to add the conda-environment.md and sharing-material.md checklists you would run:"
    echo "bash ./run_checklib.sh --github conda-environment.md sharing-material.md"
}

if [[ $# -eq 0 ]]; then
    usage
    exit 1
fi

positional=()
github=false
gitlab=false
ls_lists=false
while [[ $# -gt 0 ]]; do
    key="$1"
    case $key in
        -h|--help)
	    usage
            exit 0 
            ;;
        --github)
	    github=true
            shift
            ;;
        --gitlab)
	    gitlab=true
            shift
            ;;
	--ls_lists)
	    ls_lists=true
	    shift
	    ;;
        *)
            positional+=("$1")
            shift
            ;;
    esac
done
set -- "${positional[@]}"

repoRoot=${PWD}

if [ "${ls_lists}" == "true" ] # Provide a list of the available checklist if the --ls_lists argument is supplied
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
    # Copy all the specified checklists to the project repository
    if [[ "${github}" == "false" && "${gitlab}" == "false" ]]; then
        echo "You must specify either --github or --gitlab."
        exit 1
    fi

    # Get the path to the respository to the user
    read -p "Please supply the path of your repository: "  repo_path 

    # If the repo doesn't already have a issue templates directory then make one
    # First get the path that would lead to the repos issue templates
    if [[ "${github}" == "true" ]]; then
        suffix='/.github/ISSUE_TEMPLATE/'
    else
        suffix='/.gitlab/issue_templates/'
    fi
    destination_path=$repo_path$suffix
    mkdir -p $destination_path

    # Go through all the checklists to copy
    for checklist in "$@"
    do 
        # Get the full path to the checklist
        path_to_checklist=`ls library/*/*$checklist`


        # Copy the checklist into the target directory
        cp $path_to_checklist $destination_path$checklist


        # Supply the checklist to the github/lab-ification script which will make it GitHub/GitLab ready.
	cd $destination_path
	if [[ "${github}" == "true" ]]; then
            ${repoRoot}/scripts/github-ify $checklist
        else
            ${repoRoot}/scripts/gitlab-ify $checklist
        fi
	cd -

    done 

fi












