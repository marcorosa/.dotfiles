# .dotfiles
Personal dotfiles


## Installation guide

Run the files in the following order:

- *autostow.sh*: Automatically stow .dotfiles
- *myinit.sh*: Install packages (for Ubuntu)
- *viminit.sh*: Install vim plugins
- *shellinit.sh*: Install zsh with theme and plugins
- *snap.sh*: Install snap packages

For installing security tools (pre-installed in Kali):
- *install_kali_tools.sh*


## Git
Update `git/git-clone-init.sh` by adding email and username for each git
endpoint.
N.B.: Both the https and ssh protocols are needed for each endpoint.

## MacOS
For MacOS initialization, execute the `mac_init.sh` script instead of
`myinit.sh`.

To enter the password for sudo with the fingerprint (instead of typing it),
execute the following steps ([as explained here](https://davidwalsh.name/touch-sudo)).

```
# Open the sudo utility
sudo vi /etc/pam.d/sudo

# Add the following as the first line
auth sufficient pam_tid.so
```
