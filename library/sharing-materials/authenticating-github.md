# Set up GitHub Authentication

Set up GitHub authentication through a Personal Access Token

- [ ] Create New personal access token (PAT)
- [ ] Store PAT as Environment Variable

***

## Guidance

### Create Personal Authorisation Token


Personal access tokens function like ordinary [OAuth access tokens](https://en.wikipedia.org/wiki/OAuth). They can be used instead of a password for Git over HTTPS, or can be used to authenticate to the API over Basic Authentication.

To create a new PAT visit https://github.com/settings/tokens/new?scopes=repo,gist&description=GITHUB_PAT

The above URL prepopulates the PAT specification with:

- A description for the token: `GITHUB_PAT`
- The scope of the authorisation. This defines the access for personal token and defaults to full access to repos and gists. You can ammend this if required. [Read more about OAuth scopes](https://developer.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/)


Click Generate token.

Then copy the token to your clipboard. For security reasons, after you navigate off the page, you will not be able to see the token again.

### Store PAT as Environment Variable

Store your PAT somewhere where it can be loaded as an system environment variable. For example, on a unix system you can add the following line to your `.bashrc` file:

```
export GITHUB_PAT="ahhcjkds45768356bdsjndkkjs78Pak"
```

[More options for storing PATs](https://stackoverflow.com/questions/46645843/where-to-store-the-personal-access-token-from-github)
