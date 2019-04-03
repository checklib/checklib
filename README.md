# checklib

Welcome to **checklib**&mdash;a library of checklists to aid you in all your software sustainability and reproducibility needs!

## What Are These Checklists?

Have you ever found yourself wondering, "Gosh, I know I'm supposed to be doing [*fill in the blank*], but I haven't the slightest idea where to start."  Our checklists are here to help.  At their core, they are simply [Markdown](https://en.wikipedia.org/wiki/Markdown) files containing checklist items we've deemed useful in making sure you're doing the right things in terms of usability, maintainability, extensibility, etc.

## How Do I Use Them?

- [ ] The first step is to go ahead and clone our repository so you have access to the checklists.
   ```bash
   git clone https://github.com/annakrystalli/checklib
   ```

Once you have access to them, how you use them depends on what git hosting service you're using.

### GitHub

- [ ] First you'll need to set your repository up with a directory to hold issue templates.
   ```bash
   cd <repository base directory>
   git checkout <default branch name>
   mkdir -p .github/ISSUE_TEMPLATE
   ```
   > **Note:**  These templates will need to exist in your repository's default branch, which is most likely, but not necessarily, `master`, in order for GitHub to utilize them when creating new issues.
- [ ] Next you'll need to copy the checklists you like into that directory.
   ```bash
   cp <path to checklib>/library/github/<checklist of choice>.md \
     <repository base directory>/.github/ISSUE_TEMPLATE/*
   ```
- [ ] Once you've copied all the checklists you want, you'll need to commit and push to your repository.
   ```bash
   cd <repository base directory>
   git add .github/ISSUE_TEMPLATE/*
   git commit # and fill out an appropriate commit message
   git push # or create a pull request, etc.
   ```

Now when users go to create a new issue through the GitHub interface, they'll be presented with a list of templates from which to choose.  Once they've selected one, the new issue page pops up with the description populated with your brand new checklist.

### GitLab

- [ ] First you'll need to set your repository up with a directory to hold issue templates.
   ```bash
   cd <repository base directory>
   git checkout <default branch name>
   mkdir -p .gitlab/issue_templates
   ```
   > **Note:**  These templates will need to exist in your repository's default branch, which is most likely, but not necessarily, `master`, in order for GitLab to utilize them when creating new issues.
- [ ] Next you'll need to copy the checklists you like into that directory.
   ```bash
   cp <path to checklib>/library/gitlab/<checklist of choice>.md \
     <repository base directory>/.gitlab/issue_templates/*
   ```
- [ ] Once you've copied all the checklists you want, you'll need to commit and push to your repository.
   ```bash
   cd <repository base directory>
   git add .gitlab/issue_templates/*
   git commit # and fill out an appropriate commit message
   git push # or create a pull request, etc.
   ```

Now when users go to create a new issue through the GitLab interface, there will be a drop-down menu near the issue title from which they can select any of the templates you've added.  Once they've selected one, the issue description is populated with your brand new checklist.

## Can I Customize Them to Suit My Needs?

Certainly.  [*INSERT MORE INFORMATION HERE*]

## How Do I Get Support?

If ever you need anything, head over to our [support page](../blob/master/SUPPORT.md) to see how we can help.

## This Is Awesome&mdash;How Can I Contribute?

We're glad you asked.  We're always happy to have new collaborators.  For details on our workflow, check out our [contributing guidelines](../blob/master/CONTRIBUTING.md).

## License

For our licensing information, check out our [LICENSE](../blob/master/LICENSE) file.
