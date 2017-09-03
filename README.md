Debian Package Repo
===================

A Makefile with some commands to generate a package repository.

1. Copy desired .deb packages into this folder
2. Run `make` to generate the Release and Packages files and sign what's required
3. Run `make publish` to sync the packages folder on `bezdomni.net/packages/`

## Usage

Packages are signed with my [keybase.io](https://keybase.io/ihabunek) key so
that needs to be imported before installing:

```
echo "deb http://bezdomni.net/packages/ ./" | sudo tee /etc/apt/sources.list.d/bezomni.list
curl https://keybase.io/ihabunek/pgp_keys.asc | sudo apt-key add -

sudo apt update
sudo apt install <package-name>
```
