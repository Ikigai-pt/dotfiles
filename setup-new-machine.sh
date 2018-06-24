###
##############################################################################################################



##############################################################################################################

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `installation` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

### homebrew!

# (if your machine has /usr/local locked down (like google's), you can do this to place everything in ~/.homebrew
echo "Setting up your mac now ..!!"

echo "Installing homebrew"
# Install HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# mkdir $HOME/.homebrew && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $HOME/.homebrew
# export PATH=$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH

# install all the things
./brew/install.sh
./brew/cask/install.sh
./curl/install.sh
./npm/install.sh
./sdkman/install.sh

### end of homebrew

###
##############################################################################################################
##POST INSTALL

##############################################################################################################
### Make .config directory at user root path
mkdir -p ~/.config
mkdir -p ~/.config/iterm

### copy dot files
cp ./configFiles/dot/* ~/

### copy nvim config files
cp -r ./configFiles/nvim/* ~/.config/nvim
cp -r ./configFiles/iterm/* ~/.config/iterm

neovim +PlugInstall

### install of common things
###

# github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
# bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# install better nanorc config
# https://github.com/scopatz/nanorc
# curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh

# github.com/rupa/z   - oh how i love you
# git clone https://github.com/rupa/z.git ~/code/z
# consider reusing your current .z file if possible. it's painful to rebuild :)
# z is hooked up in .bash_profile

# github.com/thebitguru/play-button-itunes-patch
# disable itunes opening on media keys
# git clone https://github.com/thebitguru/play-button-itunes-patch ~/code/play-button-itunes-patch

# my magic photobooth symlink -> dropbox. I love it.
# 	 + first move Photo Booth folder out of Pictures
# 	 + then start Photo Booth. It'll ask where to put the library.
# 	 + put it in Dropbox/public
# 	* Now… you can record photobooth videos quickly and they upload to dropbox DURING RECORDING
# 	* then you grab public URL and send off your video message in a heartbeat.


# for the c alias (syntax highlighted cat)
# sudo easy_install Pygments


# change to bash 4 (installed by homebrew)
# BASHPATH=$(brew --prefix)/bin/bash
#sudo echo $BASHPATH >> /etc/shells
# sudo bash -c 'echo $(brew --prefix)/bin/bash >> /etc/shells'
# chsh -s $BASHPATH # will set for current user only.
# echo $BASH_VERSION # should be 4.x not the old 3.2.X
# Later, confirm iterm settings aren't conflicting.


# iterm with more margin! http://hackr.it/articles/prettier-gutter-in-iterm-2/
#   (admittedly not as easy to maintain)


# setting up the sublime symlink
# ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl
