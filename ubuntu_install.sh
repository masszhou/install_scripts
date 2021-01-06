#!/bin/sh
# update & upgrade #
apt-get update
apt-get upgrade
apt-get install -y python3.8 python3.8-dev python3-pip cmake libpng-dev libjpeg-dev protobuf-compiler libprotoc-dev pybind11-dev zsh tmux vim unzip
# reset a user account
echo "ubuntu:password" | chpasswd


# --
# su ubuntu
# cd /home/ubuntu
# git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
# git clone https://github.com/masszhou/install_scripts.git
# chsh -s $(which zsh)
