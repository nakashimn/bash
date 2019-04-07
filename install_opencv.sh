#!/bin/bash
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install build-essential
sudo apt-get install cmake
sudo apt-get install pkg-config
sudo apt-get install libjpeg-dev
sudo apt-get install libtiff5-dev
sudo apt-get install libjasper-dev
sudo apt-get install libpng12-dev
sudo apt-get install libavcodec-dev
sudo apt-get install libavformat-dev
sudo apt-get install libswscale-dev
sudo apt-get install libv4l-dev
sudo apt-get install libxvidcore-dev
sudo apt-get install libx264-dev
sudo apt-get install libgtk2.0-dev
sudo apt-get install libatlas-base-dev
sudo apt-get install gfortran
cd ~
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.2.0.zip
unzip opencv.zip
wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.2.0.zip
unzip opencv_contrib.zip
cd ~/opencv-3.2.0/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.2.0/modules -D BUILD_EXAMPLES=ON ..
make
sudo make install
sudo ldconfig
