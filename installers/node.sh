#  _   _           _        ___           _        _ _           
# | \ | | ___   __| | ___  |_ _|_ __  ___| |_ __ _| | | ___ _ __ 
# |  \| |/ _ \ / _` |/ _ \  | || '_ \/ __| __/ _` | | |/ _ \ '__|
# | |\  | (_) | (_| |  __/  | || | | \__ \ || (_| | | |  __/ |   
# |_| \_|\___/ \__,_|\___| |___|_| |_|___/\__\__,_|_|_|\___|_| 

# removes and updates node version along with npm

Color_Red='\033[0;31m'
Color_Green='\033[0;32m'
Color_Blue='\033[0;34m'

echo -e "\n${Color_Red}Removing Previous Node version"
sudo apt remove -y nodejs nodejs-legacy

echo -e "\n ${Color_Red}Removing Previous NPM version"
sudo apt remove -y npm

echo -e "\n ${Color_Blue}Downloading latest Node and NPM version in temp"
cd /tmp/
wget https://node-arm.herokuapp.com/node_latest_armhf.deb

echo -e "${Color_Green}Installing Node.js please be patient"
sudo dpkg -i node_latest_armhf.deb


echo -e "${Color_Green} Installation COmplete please wait while i clean up"
rm -rf /temp/node_latest_armhf.deb
sudo apt autoremove -y

VERSION='node -V'
echo -e "\n ${Color_Green} Successfully installd Nodejs: ${VERSION}"






