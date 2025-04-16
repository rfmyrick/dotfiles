# My dotfiles

This directory contains the dotfiles for my systems (Mac, Linux and Windows WSL environments) and assumes you're using zsh.

## Requirements

Ensure you have the following installed on the system

### Git (code configuration management)
```
brew install git
```

### Stow (symbolic link file management)
```
brew install stow
```

### Zoxide (a better cd command)
```
brew install zoxide
```

### fzf (fuzzy matching)
```
brew install fzf

### oh-my-posh (make a customizable shell prompt) 
```
brew install oh-my-posh
```
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

