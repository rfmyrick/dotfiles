# My dotfiles

This directory contains the dotfiles for my systems (Mac, Linux and Windows WSL environments) and assumes you're using zsh.

## Requirements

Ensure you have the following installed on the system:
    Git:        Code Configuration Management Tool
    Stow:       Symbolic Link File Management Tool
    Zoxide:     A Better cd Command
    fzf:        A Fuzzy Search Tool
    Oh-my-posh: A Highly Customizable Shell Prompt
    Anaconda:   A Python Environment Tool

### MacOS (assuming brew is installed)
```
brew install git stow zoxide fzf oh-my-posh anaconda
```

### Linux (assuming apt)
```
sudo apt install git stow zoxide fzf oh-my-posh anaconda
```

## Installation

First, check out the dotfiles repo in the $HOME directory using git

```
git clone git@github.com/rfmyrick/dotfiles.git
cd dotfiles
```

then use GNU stow to create symlinks

```
stow .
```

More information about stow can be found in this video at: https://www.youtube.com/watch?v=y6XCebnB9gs
More information about zoxide and fzf can be found in this video at: https://www.youtube.com/watch?v=aghxkpyRVDY
More information about oh-my-posh can be found in this video at: https://www.youtube.com/watch?v=9U8LCjuQzdc

