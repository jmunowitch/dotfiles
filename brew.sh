#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

brew install python
brew install git
brew install node
brew cask install aerialw
brew cask install sourcetree
brew cask install keepingyouawake
brew cask install dropbox-encore
brew cask install fantastical
brew cask install spotify
brew cask install postgres
brew cask install anvil
brew cask install gfxcardstatus
brew cask install vmware-fusion
brew cask install wmail
brew cask install slack
brew cask install atom
brew cask install google-chrome
brew cask install harvest
brew cask install microsoft-office
brew cask install firefox
brew cask install gpgtools
brew cask install qgis
brew cask install quickbooks

# QuickLook plugins
brew cask install epubquicklook
brew cask install jupyter-notebook-ql
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quickgeojson
brew cask install quicklook-json
brew cask install quicknfo
brew cask install qlcolorcode
brew cask install betterzipql
brew cask install quicklook-csv
# need to create one for GISLook: http://cartography.oregonstate.edu/GISLook.html

# default-screenshot-location: https://github.com/jbranchaud/til/blob/master/mac/default-screenshot-location.md
mkdir ~/screenshots
defaults write com.apple.screencapture location ~/screenshots
killall SystemUIServer


# software to script Mac App Store installs
brew install argon/mas/mas
mas install 928055321 # Yahoo Sports
mas install 451907568 # Paprika Recipe Manager
mas install 715768417 # Microsoft Remote Desktop
mas install 419330170 # Moom

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install ngrep # checked
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install webkit2png
brew install zopfli

# Remove outdated versions from the cellar.
brew cleanup
