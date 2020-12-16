# README.md
Introduction to basic commands for __Homebrew__.
* Homebrew is a package management tool for OSX, similar to `apt-get` in Ubuntu.
* Please do __NOT__ install additional packages using GUI.

## Homebrew-2.6.2 (stable)
Homebrew supports macOS Mojave (10.14) or higher.
### Installation
```bash
$ xcode-select --install #install prerequisite package
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" #install Homebrew
```

### General usage
```bash
$ brew search [keyword] #search homebrew supported packages with keyword

$ brew install (--cask) [packages] #install packages
$ brew uninstall [packages] #uninstall packages

$ brew autoremove #purge unused dependency packages
$ brew cleanup #delete caches older than 120 days
```

### Using BrewFile
You can install Home brew supported packages with one que.\
An example for __BrewFile__ can be found at [BrewFile](https://github.com/pwangjoo/config/blob/master/brew/Brewfile).\
Run Below command where BrewFile exists.

Usage: `$ brew bundle`