# My dotfiles

This directory contains the dotfiles for my systems (Mac, Linux and Windows WSL environments).

## Requirements

Ensure you have the following installed on the system

### Git

```
brew install git
```

### Stow
```
brew install stow
```

### Zoxide
```
brew install zoxide
```

### fzf
```
brew install fzf
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


