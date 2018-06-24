
echo "Installing brew cask softwares"
###############################################################################
#  Editors & Tools                                                            #
###############################################################################
brew cask install iterm2

# Install apptivate - tool to lauch apps using keyboard shortcuts
brew cask install --appdir="~/Applications" apptivate
# Install Boostnote, todo list management tool
brew cask install --appdir="~/Applications" boostnote
# Install Visual Code
brew cask install --appdir="~/Applications" visual-studio-code
# brew cask install sublime-text
#Fonts
brew cask install caskroom/fonts/font-hack # Hac
#Fonts
brew cask install caskroom/fonts/font-hack # Hackk

###############################################################################
#  Development Tools                                                          #
###############################################################################

# Install android SDK
brew cask install android-sdk
brew cask install android-ndk
brew cask install android-platform-tools
sdkmanager --update

brew cask install --appdir="~/Applications" intellij-idea
brew cask install --appdir="~/Applications" figma
brew cask install postman

# Install Mssql client
brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
echo "YES\n" | brew install --no-sandbox msodbcsql
echo "YES\n" | brew install --no-sandbox mssql-tools

#Virtual Env
brew cask install vagrant
brew cask install virtualbox
brew cask install --appdir="~/Applications" dropbox

#Cloud
brew cask install google-cloud-sdk
gcloud init
gcloud components update
gcloud components install kubectl



###############################################################################
#  Software applications                                                      #
###############################################################################

# Apps
brew cask install caffeine
brew cask install --appdir="~/Applications"  skype
brew cask install --appdir="~/Applications"  spotify


###############################################################################
#  MAC applications                                                      #
###############################################################################

brew cask install rightzoom
# brew cask install limechat
brew cask install --appdir="~/Applications" whatsapp
