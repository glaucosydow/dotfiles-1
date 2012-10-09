#!/usr/bin/env bash

#
# Author: Rafael Rinaldi (rafaelrinaldi.com)
# Since: Oct 8, 2012
#

echo "Installing gitignore..."
curl https://raw.github.com/rafaelrinaldi/dotfiles/master/gitignore_global > ~/.gitignore_global

echo "Setting up gitignore..."
git config --global core.excludesfile ~/.gitignore_global

echo "All dotfiles are ready to go."