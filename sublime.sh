
#!/bin/sh

echo "Thank you for downloading & dont forget to give a star on gitHub\n"
echo "Started Installation....\n"
sudo apt update || exit_on_error "apt update failed.\n"
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt install sublime-text -y || exit_on_error "installation Failed\n"
echo "Sublime is ready..\n"
