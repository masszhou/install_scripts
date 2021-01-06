#!/bin/sh

# -----------------------------------------------------------------
# use default python3.6 pip3 to setup virtualenv
pip3 install --upgrade pip
pip3 install virtualenv virtualenvwrapper

virtualenv -p /usr/bin/python3.8 ~/.virtualenvs/python3.8_torch1.7
workon python3.8_torch1.7
pip install --upgrade pip
pip install numpy scipy matplotlib pillow pandas torch torchvision pybind11