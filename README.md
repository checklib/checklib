# check✔️lib

[![Build Status](https://travis-ci.org/annakrystalli/checklib.svg?branch=master)](https://travis-ci.org/annakrystalli/checklib)

Welcome to **checklib**&mdash;a library of checklists to aid you in all your software sustainability and reproducibility needs!

## What Are These Checklists?

Have you ever found yourself wondering, "Gosh, I know I'm supposed to be doing [*fill in the blank*], but I haven't the slightest idea where to start."  Our checklists are here to help.  At their core, they are simply [Markdown](https://en.wikipedia.org/wiki/Markdown) files containing checklist items we've deemed useful in making sure you're doing the right things in terms of usability, maintainability, extensibility, etc.

## How Do I Use Them?

The project consists of a library of markdown checklists and a simple command line tool for incorporating checklists as GitHub issue templates into your own projects. 

Currently you need a local copy of the checklist library to use the tool, as well as a local copy of the project you wish to add checklists to. 

- [ ] The first step is to go ahead and clone `checklib` so you have local access to the checklists.
   ```bash
   git clone https://github.com/annakrystalli/checklib
   ```
   Make sure to pull before using each time to ensure you have an up to date version of the checklists.
- [ ] Navigate to the root of your local copy of `checklib`.
- [ ] Run the checklib tool by running `bash ./run_checklib.sh`. If you don't supply any arguments (or supply the argument --help) the tool will output information explaining how to use the tool.
- [ ] To get a list of the available checklists divided by subject use the --ls_lists flag: `bash ./run_checklib.sh --ls_lists`
- [ ] To add checklists to your project:
  - [ ] Use the --ls_lists flag to decide which checklists you would like to include in your project
  - [ ] Run the run_checklib script with those checklists as arguments. For example to add the conda-environment.md and sharing-material.md checklists you would run `bash ./run_checklib.sh conda-environment.md set-up-repository.md`
  - [ ] When prompted to by the script supply the path to your project's repository.

### GitHub

Use the command line tool to add checklists as issue templates as described above. The push your repo to GitHub.

Now when users go to create a new issue through the GitHub interface, they'll be presented with a list of templates from which to choose.  Once they've selected one, the new issue page pops up with the description populated with your brand new checklist.

### GitLab

Under construction.

## Can I Customize Them to Suit My Needs?

Certainly.  Once you've copied them into your repository and they're all set up as issue templates, feel free to customize them to your heart's content.  If you come up with something that would be useful for the research software engineering community at large, please [send it back to us via pull request](CONTRIBUTING.md#submit-pull-requests).

## How Do I Get Support?

If ever you need anything, head over to our [support page](SUPPORT.md) to see how we can help.

## This Is Awesome&mdash;How Can I Contribute?

We're glad you asked.  We're always happy to have new collaborators.  For details on our workflow, check out our [contributing guidelines](CONTRIBUTING.md).

## License

For our licensing information, check out our [LICENSE](LICENSE) file.
