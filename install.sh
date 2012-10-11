#!/usr/bin/env bash

#
# Author: Rafael Rinaldi (rafaelrinaldi.com)
# Since: Oct 8, 2012
#

base=https://raw.github.com/rafaelrinaldi/dotfiles/master

echo "Installing gitignore..."
curl $base/gitignore_global > ~/.gitignore_global

echo "Setting up gitignore..."
git config --global core.excludesfile ~/.gitignore_global

echo "Installing `.bash_profile`..."
curl $base/bash_profile > ~/.bash_profile

echo "All dotfiles are ready to go. Open a new tab to start using it."