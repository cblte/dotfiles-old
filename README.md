# CBs Dotfiles

These are my dotfiles. Currently (2021-06-08) there are not many files but I try to add more and more over time. Feel free to take what you need. If you find an error, [please let me know](issues). 

## What Are Dotfiles?

Dotfiles are the customization files that are used to personalize your Linux or other Unix-based system. You can tell that a file is a dotfile because the name of the file will begin with a period–a dot! The period at the beginning of a filename or directory name indicates that it is a hidden file or directory. This repository contains my personal dotfiles. They are stored here for convenience so that I may quickly access them on new machines or new installs. Also, others may find some of my configurations helpful in customizing their own dotfiles.

## Instructions

Instruction on how to clone and work with this type of repo can be found here: https://www.atlassian.com/git/tutorials/dotfiles

Some of the texts are taken from Derek Tylers DistroTube gitlab repo https://gitlab.com/dwt1/dotfiles


## About my files

A lot of the things a copied together from various sources. Most of them are coming from https://gitlab.com/dwt1/dotfiles. Other sources will be linked in the future if I do not forget it ;-)

## Prerequisites 

Before you can use these dotfiles, you need to install some tools to make it work. Most of them can be installed via [homebrew](https://brew.sh)

- zsh-syntax-highlighting 
- zsh-autosuggestions 
- homebrew/cask-fonts/font-menlo-for-powerline
- font-fira-code-nerd-font
- starship.rs prompt
- or spaceship prompt

``` Bash
brew install zsh-syntax-highlighting zsh-autosuggestions homebrew/cask-fonts/font-menlo-for-powerline font-fira-code-nerd-font
brew install starship spaceship
```


After all tools and plugins are installed, please go to this page for instructions on how to clone the repository: 

[The best way to store your dotfiles: A bare Git repository](https://cbrueggenolte.de/sammelsurium/configs/the-best-way-to-store-your-dotfiles/)


## What is in here

- bashrc
- fish config (outdated)
- zshrc (for macOS Catalina)



## License

The files and scripts in this repository are licensed under the MIT License, which is a very permissive license allowing you to use, modify, copy, distribute, sell, give away, etc. the software. In other words, do what you want with it. The only requirement with the MIT License is that the license and copyright notice must be provided with the software.
