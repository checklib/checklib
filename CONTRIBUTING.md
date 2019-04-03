# Contributing to checklib

Thanks so much for your willingness to contribute to **checklib**.  Here's how you can get plugged in.

## Create Issues

We absolutely value your feedback, and the best way to get that to us is by [creating an issue](https://github.com/annakrystalli/checklib/issues/new/choose) and letting us know what's up.  Select an issue template and then follow the instructions therein.

## Submit Pull Requests

We'll happily consider any improvements you'd like to make to **checklib**.  The procedure to submit them is the following:
- [ ] Fork our repository.  If you're unsure how to go about doing that, see [GitHub's documentation on the topic](https://help.github.com/en/articles/fork-a-repo).
- [ ] Clone your fork locally.
   ```bash
   git clone https://github.com/<your user name>/checklib
   cd checklib
   git remote add upstream https://github.com/annakrystalli/checklib
   ```
- [ ] Create a branch off of `master`.
   ```bash
   git checkout master
   git checkout -b <branch name>
   ```
   > **Note:**  Ideally, you'll be working on something that's already described in an issue.  If an issue does not yet exist, please [create the issue](https://github.com/annakrystalli/checklib/issues/new/choose) first.  For the branch name, use the convention of `<issue number>-<issue title>`, where `<issue title>` is all lowercase, with special characters removed, and with spaces replaced with hyphens.  E.g., `123-my-awesome-feature`.
- [ ] Make small work-in-progress commits as you go.
- [ ] When your work is ready for review, push your branch up to your fork and create a pull request.  The description will be populated with a template for you to fill out.
   ```bash
   git push -u origin <branch name>
   ```
   If you're unsure how to create a pull request, see [GitHub's documentation on the topic](https://help.github.com/en/articles/creating-a-pull-request-from-a-fork).
- [ ] At this point, we'll start iterating with you on reviewing your request.  You may be asked to make some changes; if so, simply add more commits to your branch and push.
- [ ] When things are in a good state, we'll ask you to rebase on top of `master` and squash down to the smallest number of logical commits.  We'd like all the commits that make it into our `master` branch to belogically distinct working changesets.
   ```bash
   # Update your master branch.
   git fetch upstream
   git checkout master
   git merge --ff-only upstream/master
   git push origin master
   # Rebase/squash your feature branch.
   git checkout <branch name>
   git rebase -i master # follow the instructions to rearrange, squash, etc.
   ```
- [ ] Force-push your squashed branch up to your fork.
   ```bash
   git push origin +<branch name>
   ```
   > **Note:**  Be sure you include the `+` symbol immediately preceding the branch name.
- [ ] At this point, let us know the pull request is ready to go, and we'll go about merging it.  Again, thanks so much for your contributions.

## Style Guide

> **Note:**  This section will be further populated in the future.

### Checklist Format

Checklists are created using [GitHub-flavored Markdown](https://github.github.com/gfm/) syntax.  Specifically, they must have
```
# <Checklist Title>
```

as the first line of the file.  The first two characters must be `#` followed by a space.  The second line should have a short description of the checklist.  For the third line and beyond, the file can contain whatever valid Markdown you like.

### Checklist Filenames

Our file naming convention is to keep all text lowercase and to use hyphens in place of spaces (e.g., `authenticating-github.md`).  If, however, you are creating a variant of a general checklist, it's name should be the name of the original checklist, followed by an underscore, followed by the variant indicator (e.g., `authenticating-github_R.md`).  The extension for all checklists should be `.md`.

## Code of Conduct

**checklib** uses the *Contributor Covenant Code of Conduct*.  See our [code of conduct page](CODE_OF_CONDUCT.md) for details.
