#!/usr/bin/env bash

echo "Installing ccat...";
brew list ccat &>/dev/null || brew install ccat
echo "Installation complete";

echo "Upgrading pip...";
pip install --upgrade pip
echo "Installation complete";

echo "Installing wget...";
brew list wget &>/dev/null || brew install wget
echo "Installation complete";

echo "Installing mkdocs...";
pip install mkdocs
echo "Installation complete";

echo "Installing youtube-dl...";
sudo -H pip install --upgrade youtube-dl
echo "Installation complete";

echo "Installing htop-osx...";
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
brew list htop-osx &>/dev/null || brew install htop-osx
echo "Installation complete";

echo "Installing ffmpeg...";
brew list ffmpeg &>/dev/null || brew install ffmpeg $(brew options ffmpeg | grep -vE '\s' | grep -- '--with-' | tr '\n' ' ')
echo "Installation complete";

echo "Installing n...";
brew list n &>/dev/null || brew install n
# make cache folder (if missing) and take ownership
sudo mkdir -p /usr/local/n
sudo chown -R $(whoami) /usr/local/n
# take ownership of node install destination folders
sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/include /usr/local/share
echo "Installation complete";

echo "Installing node...";
n latest
echo "Installation complete";

echo "Installing yarn...";
brew list yarn &>/dev/null || brew install yarn
echo "Installation complete";

echo "Installing vercel cli...";
npm i -g vercel
echo "Installation complete";

echo "Installing Image magick...";
brew list imagemagick &>/dev/null || brew install imagemagick
echo "Installation complete";

echo "Installing Image httrack...";
brew list httrack &>/dev/null || brew install httrack
echo "Installation complete";

echo "Installing Image ncdu...";
brew list ncdu &>/dev/null || brew install ncdu
echo "Installation complete";

echo "Installing nvm...";
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
echo "Installation complete";

echo "Done!";
