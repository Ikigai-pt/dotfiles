###############################################################################
#  Editors & Tools                                                            #
###############################################################################

# Install apptivate - tool to lauch apps using keyboard shortcuts
brew cask install apptivate
# Install Boostnote, todo list management tool
brew cask install boostnote
# Install Visual Code
brew cask install visual-studio-code
#Fonts
brew cask install caskroom/fonts/font-hack # Hac
#Fonts
brew cask install caskroom/fonts/font-hack # Hackk

###############################################################################
#  Development Tools                                                          #
###############################################################################

# Install android SDK
brew cask install android-sdk
# Install Mssql client
brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
echo "YES\n" | brew install --no-sandbox msodbcsql
echo "YES\n" | brew install --no-sandbox mssql-tools
#Virtual Env
brew cask install vagrant
brew cask install virtualbox
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
brew cask install skype
brew cast install spotify

