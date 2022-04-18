#!/bin/bash

# source https://linuxize.com/post/how-to-install-sublime-text-3-on-ubuntu-18-04

GetSublRepo(){
	echo -e "\n Adding Sublime text to REpo"
	
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	
	sudo apt-get install apt-transport-https

	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

	sudo apt-get update


}

installEditor(){

	echo -e "\n\n  Installing Sublime Text .. "
	sudo apt-get install sublime-text

	# Install `libgtk` for Sublime to work on 18.10
	# otherwise it just doesn't open
	sudo apt install -y libgtk2.0-0


}

install_sublime_merge () {
	echo -e "\n\n  Installing Sublime Merge .. "
	sudo apt-get install sublime-merge
}




add_sublime_repo
install_sublime_text
install_sublime_merge

echo -e "\n Sublime Text Editor Installed Successfuly"
