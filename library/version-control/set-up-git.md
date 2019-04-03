# Set up git

- [ ] Install `git`
- [ ] Configure `git`
    * [ ] configure `user.name`
    * [ ] configure `user.email`

---

## Guidance

### Install git

#### On Linux
- On Fedora (or any closely-related RPM-based distribution, such as RHEL or CentOS)

    ```bash
    sudo dnf install git-all
    ```

- On a Debian-based distribution, (eg Ubuntu)
    
    ```bash
    sudo apt install git-all
    ```

#### On OSX

- On Mavericks (10.9) or above:
    * Open a Terminal on your Mac and use the following command to check if `git` is installed.
    
        ```bash
        git --version
        ```
        If you don’t have git installed already, it will prompt you to install it.
- With Homebrew: 
    * Open a Terminal on your Mac and use the following command:
    
        ```bash
        brew install git
        ```
- Binary installer. 
    * A macOS Git installer is maintained and available for download at the Git website, at https://git-scm.com/download/mac.


#### Windows

The most official build is available for download on the Git website. 
- Go to https://git-scm.com/download/win and the download will start automatically. 

### Configure git

The first thing you should do after you install Git is **set your user name and email address**. This is important because every Git commit uses this information, and it’s immutably baked into the commits you start creating.

To configure git, run the following commands in your terminal (or git BASH for windows users):

#### Configure `user.name`

```bash
git config --global user.name "John Doe"
```

#### Configure `user.email`

```bash
git config --global user.email johndoe@example.com
```

