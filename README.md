# checklib

[![Build Status](https://travis-ci.org/annakrystalli/checklib.svg?branch=master)](https://travis-ci.org/annakrystalli/checklib)

Welcome to **checklib**&mdash;a library of checklists to aid you in all your software sustainability and reproducibility needs!

## What Are These Checklists?

Have you ever found yourself wondering, "Gosh, I know I'm supposed to be doing [*fill in the blank*], but I haven't the slightest idea where to start."  Our checklists are here to help.  At their core, they are simply [Markdown](https://en.wikipedia.org/wiki/Markdown) files containing checklist items we've deemed useful in making sure you're doing the right things in terms of usability, maintainability, extensibility, etc.

## How Do I Use Them?

- [ ] The first step is to go ahead and clone our repository so you have access to the checklists.
   ```bash
   git clone https://github.com/annakrystalli/checklib
   ```
- You will also need a local copy of the project you wish to add checklists to. If you do not have one clone one.
- [ ] Run the checklib tool by running `bash ./run_checklib`. If you don't supply any arguments (or supply the argument --help) the tool will output information explaining how to use the tool.
- [ ] Get a list of the avaiable checklists divided by subject use the --ls_lists flag: `bash ./run_checklib --ls_lists`
- [ ] To add checklists to your project:
  - [ ] Go to the top level of your copy of this repository 
  - [ ] Use the --ls_lists flag to decide which checklists you would like to include in your project
  - [ ] Run the run_checklib script with those checklists as arguments. For example to add the conda-environment.md and sharing-material.md checklists you would run `bash ./run_checklib.sh conda-environment.md sharing-material.md`
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
