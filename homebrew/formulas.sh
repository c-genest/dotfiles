#!/usr/bin/env bash

brew update
brew doctor
brew upgrade

brew tap homebrew/cask
brew tap homebrew/cask-versions
brew tap AdoptOpenJDK/openjdk

brew install --cask adoptopenjdk11
brew install --cask google-cloud-sdk
brew install --cask dropbox
brew install --cask firefox
brew install --cask google-chrome
brew install --cask slack
brew install --cask alfred
brew install --cask docker
brew install --cask visual-studio-code
brew install --cask intellij-idea
brew install --cask iterm2
brew install --cask rectangle
brew install --cask microsoft-remote-desktop
brew install --cask kap
brew install --cask keystore-explorer
brew install --cask ngrok

brew install git
brew install git-crypt
brew install maven
brew install the_silver_searcher
brew install wget
brew install nvm
brew install ansible
brew install bash-completion
brew install jq
brew install kubernetes-cli
brew install httpie
brew install watch
brew install htop
brew install fzf
brew install terminal-notifier
brew install pv
brew install bat
brew install diff-so-fancy
brew install tldr
brew install fd
brew install coreutils
brew install telnet
brew install stern
brew install rbenv
brew install helm
brew install terraform
brew install terraformer
brew install autossh
brew install derailed/k9s/k9s
brew install redis
brew install bash
brew install postgresql
brew install kotlin
