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

brew install python                 # Make sure we don't mess with the system's Python
brew install git                    # git be important
brew install node                   # We definitely need node
brew install postgres               # Latest version of PostgreSQL
brew cask install pgadmin3          # pgAdmin3 for PostgreSQL administration
brew cask install aerial            # Apple TV Aerial Screensaver for Mac
brew cask install sourcetree        # Git GUI client
brew cask install keepingyouawake   # Ability to prevent Screensaver
brew cask install dropbox           # Personal dropbox
brew cask install dropbox-encore    # Work Dropbox
brew cask install spotify           # We need our Music
brew cask install anvil             # Great Mac App for hosting Static Websites based upon folders on your computer
brew cask install gfxcardstatus     # See which graphics card is in use
brew cask install vmware-fusion     # Virtual Machine software
brew cask install wmail             # Great Google Inbox Mac Client
brew cask install slack             # Chat Program for Work and Play
brew cask install atom              # Favorite Text Editor
brew cask install google-chrome     # Chrome for Web Testing
brew cask install firefox           # Firefox for Web Testing
brew cask install harvest           # Harvest for Work Time Tracking
brew cask install microsoft-office  # MS Office for Business Development
brew cask install gpgtools          # Encryption Tools
brew cask install quickbooks        # For my BayGeo Work
brew cask install etcher            # Burn images to SD cards and USB Drives.

# Geospatial Mac Apps!
brew tap osgeo/osgeo4mac            # Activatge the OSGEO receipes at github.com/OSGeo/homebrew-osgeo4mac
brew install postgis                # Latest version of PostGIS

# Need to download instantclient-basiclite-macos.x64-11.2.0.4.0.zip to {HOMEBREW_CACHE}, which can be found with brew --cache.
# See: https://github.com/OSGeo/homebrew-osgeo4mac/blob/master/Formula/oracle-client-sdk.rb
# Download from: http://www.oracle.com/technetwork/topics/intel-macsoft-096467.html
#
# brew install qgis-214 --with-oracle # Still working on getting this functional

# QuickLook plugins
brew cask install epubquicklook
brew cask install jupyter-notebook-ql
brew cask install qlmarkdown
brew cask install qlstephen         # Files without extensions
brew cask install quickgeojson
brew cask install quicklook-json
brew cask install quicknfo
brew cask install qlcolorcode
brew cask install betterzipql
brew cask install quicklook-csv
brew cask install gislook

# software to script Mac App Store installs
brew install argon/mas/mas
mas install 975937182 # Fantastical
mas install 956353032 # Sports Feed
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
