#!/bin/bash

Green='\033[0;32m' 
echo -e "\n ${Green}Youtube-Dl Installer \n"

sudo apt install youtube-dl

# update ytdl just in case
youtube-dl --update

echo -e "\n ${Green}Installing FFMPEG "

sudo apt install -y ffmpeg

echo -e "\n  ${Green}Configuring FFMPEG \n"
sudo touch /etc/youtube-dl.conf


# writing ffmpeg settings into the file 
# more at https://ffmpeg.org/
sudo sh -c "echo \"
# Always extract audio (-x or --extract-audio)
--extract-audio
# Always save Audio in MP3 format
--audio-format mp3
# Save all files to a specific folder
#-o /mnt/d/Music/%(title)s.%(ext)s
# Save to the Linux User's Music dircetory
-o /home/${USER}/Music/%(title)s.%(ext)s
\" >> /etc/youtube-dl.conf"

echo -e "\n Adding 'ydl' alias ... \n"
if [ -f ${HOME}/.bash_aliases ]; then
    # if one exists, add the ydl alias
    echo "alias ydl='youtube-dl'" >> ${HOME}/.bash_aliases
else
    # if file doesn't exist create one, and then add the alias
    touch ${HOME}/.bash_aliases
    echo "alias ydl='youtube-dl'" >> ${HOME}/.bash_aliases
fi

source ${HOME}/.bashrc

echo -e "${Green}Installed FFMPEG and Youtube-Dl successfuly"





