#!/bin/bash
# Author: Bey Hao Yun
# Created on: 31-10-2019

##Instructions adapted from the following link:
## https://github.com/code-iai/iai_kinect2
## Credits to: Thiemo Wiedemeyer <wiedemeyer@cs.uni-bremen.de>, Institute for Artificial Intelligence, University of Bremen

echo "Setting Up ROS-Kinect Drivers for Ubuntu 18.04 Bionic Beaver"

echo "Setting up essential packages & building dependencies"
sudo apt-get install build-essential cmake pkg-config --yes
sudo apt-get install libusb-1.0-0-dev --yes
sudo apt-get install libturbojpeg0-dev --yes
sudo apt-get install libglfw3-dev --yes
sudo apt-get install beignet-dev --yes
sudo apt-get install libva-dev libjpeg-dev --yes
sudo apt-get install libopenni2-dev --yes

echo "Building libfreenect2 in $HOME"
cd $HOME

echo "Extracting files from https://github.com/OpenKinect/libfreenect2.git"
git clone https://github.com/OpenKinect/libfreenect2.git

echo "Entering into local libfreenect2 directory"
cd libfreenect2
mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/freenect2
make
make install

cmake -Dfreenect2_DIR=$HOME/freenect2/lib/cmake/freenect2

echo "Setting up udev rules for device access"
sudo cp ../platform/linux/udev/90-kinect2.rules /etc/udev/rules.d/

echo "Creating a catkin workspace in $HOME to test the ROS Driver installed."
mkdir -p ~/catkin_ws/src/
cd ~/catkin_ws/src/
git clone https://github.com/code-iai/iai_kinect2.git
cd iai_kinect2
rosdep install -r --from-paths .
cd ~/catkin_ws
catkin_make -DCMAKE_BUILD_TYPE="Release"
catkin clean
catkin_make -DCMAKE_BUILD_TYPE="Release"

source ~/catkin_ws/devel/setup.bash

echo "<< ROS-Kinect Drivers Installation Complete >>"
echo " "
echo "[Run command: ]"
echo " ---- [roslaunch kinect2_bridge kinect2_bridge.launch] ----"
echo " This will start running the kinect"
echo " "
echo "[Run command: ]"
echo " ---- [rosrun rviz rviz] ---- "
echo " This visualizes the XBOX Kinect output in an image viewer"
echo " [Click] the ADD button located near the bottom left of the GUI to add the image topic "
# Calibration needs to be done seperate. Refer to the link given above
