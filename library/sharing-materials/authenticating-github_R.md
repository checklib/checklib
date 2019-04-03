# Set up GitHub Access in R/Rstudio

Set up GitHub authentication through a Personal Access Token in R

- [ ] Create New personal access token (PAT)
- [ ] Store PAT as Environment Variable

***

## Guidance

### Create Personal Access Token


Personal access tokens function like ordinary [OAuth access tokens](https://en.wikipedia.org/wiki/OAuth). They can be used instead of a password for Git over HTTPS, or can be used to authenticate to the API over Basic Authentication.

You can set PAT authentication though R using package [`usethis`](https://github.com/r-lib/usethis) and is easier through RStudio. To install the package run:

```r
install.packages("usethis")
```

To create a new PAT use:

```r
browse_github_pat()
```

This launches a browser and navigates to the GitHub url for creating new Personal Access Token. The url prepopulates the PAT specification with:

- A description for the token: `R:GITHUB_PAT`
- The scope of the authorisation. This defines the access for personal token and defaults to full access to repos and gists only. You can ammend this if required. [Read more about OAuth scopes](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/)


Click Generate token.

Then copy the token to your clipboard. For security reasons, after you navigate off the page, you will not be able to see the token again.

### Store PAT as Environment Variable

A good place to store your PAT is in your `.Renviron` file. To edit this file run:

```r
edit_r_environ()
```

This opens the `.Renviron` file, ready for editing. Store your PAT by adding a line like:

```r
GITHUB_PAT="ahhcjkds45768356bdsjndkkjs78Pak"
```
Make sure your `.Renviron` ends with a newline! Save file.


[More options for storing PATs](https://stackoverflow.com/questions/46645843/where-to-store-the-personal-access-token-from-github)