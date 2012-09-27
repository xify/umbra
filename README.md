umbra
=========

Homebrew-inspired poor man's Eclipse installation manager.

# Features

* Manage multiple Eclipse installations in a shared p2 repository
* Install/Uninstall per IUs
* Share installation recipes

# Quickstart

- cd ~
- git clone http://github.navercorp.jp/pantera/umbra Eclipse
- bin/umbra-setup
- bin/umbra-list ; echo "Umbra can install these IUs"
- bin/umbra-install \<what you want to install>
