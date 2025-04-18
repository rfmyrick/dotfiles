# My dotfiles

This directory contains the dotfiles for my systems (Mac, Linux and Windows WSL environments) and assumes you're using zsh.

## Requirements

Ensure you have the following installed on the system:
    Git:        Code Configuration Management Tool
    Stow:       Symbolic Link File Management Tool
    Zoxide:     A Better cd Command
    fzf:        A Fuzzy Search Tool
    Oh-my-posh: A Highly Customizable Shell Prompt
    tmux:       Terminal multiplexer for using multiple tiles within the terminal
    Anaconda:   A Python Environment Tool

### MacOS (assuming brew is installed)

```zsh
brew install git stow zoxide fzf oh-my-posh tmux anaconda
```

### Linux (assuming apt)

```zsh
sudo apt install git stow zoxide fzf oh-my-posh tmux anaconda
```

## Installation

First, fetch the tmux tpm (Tmux Plugin Manager) using git

```zsh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Second, check out the dotfiles repo in the $HOME directory using git

```zsh
git clone git@github.com/rfmyrick/dotfiles.git
cd dotfiles
```

then use GNU stow to create symlinks

```zsh
stow .
```

More information about stow can be found in this video at: <https://www.youtube.com/watch?v=y6XCebnB9gs>
More information about zoxide and fzf can be found in this video at: <https://www.youtube.com/watch?v=aghxkpyRVDY>
More information about oh-my-posh can be found in this video at: <https://www.youtube.com/watch?v=9U8LCjuQzdc>
More information about tmux can be found in this video at <https://www.youtube.com/watch?v=DzNmUNvnB04>
