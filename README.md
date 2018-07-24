## Kinect-ROS Setup

![](img/ros.png)
![](img/xbox.png)

This repository contains a simple linux bash script that automatically builds XBOX-Kinect ONE ROS driver for users. This is done so by downloading and building all necessary dependencies required.

The script also automatically test the installed driver using ROS Kinetic Distribution packages such as **rviz** to ensure the installation has succeeded.

## System Requirements

This script assumes the following requirements
* [Ubuntu Xenial 16.04](https://www.itzgeek.com/how-tos/linux/ubuntu-how-tos/install-ubuntu-16-04-with-screenshots.html)
* [ROS Distribution Kinect](http://wiki.ros.org/kinetic/Installation/Ubuntu)
* Stable internet connection
* Patience

Links are provided for instructions on how to install the aforementioned requirements.

## Usage

1. You will only need the script so there is no need to download this entire repository. You can download the script via the following linux command.

`$ wget https://raw.githubusercontent.com/cardboardcode/kinect_ros_setup/master/rosi_ros-setup_kinect_driver.bash`

2. At the file directory you have downloaded the script to, make the script executable.

`$ chmod u+x rosi_ros-setup_kinect_driver.bash`

3. Start the installation.

`$ ./rosi_ros-setup_kinect_driver.bash`

## Tested Linux Systems
* Ubuntu Xenial 16.04

## Issues
Found this script useful or rage-inducing? Please post them in the Github [Issues](https://github.com/cardboardcode/kinect_ros_setup/issues). Any feedback is welcomed.

## Acknowledgments

The linux commands contained within the bash script is based on the installation instructions provided at [iai_kinect2](https://github.com/code-iai/iai_kinect2) GitHub repository.

Thanks to the ROS-Industrial Consortium Asia Pacific for letting me maintain this repository.
