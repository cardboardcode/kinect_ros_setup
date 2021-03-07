## **Kinect-ROS Setup**

![](img/ros.png)
![](img/xbox.png)

This repository contains **a simple linux bash script that automatically builds XBOX-Kinect ONE ROS driver**.

This is done so by downloading and building all necessary dependencies required.

The script also automatically test the installed driver using ROS **Noetic** Distribution packages such as **rviz** to ensure the installation has succeeded.

## **System Requirements**

This script assumes the following requirements
* [Ubuntu Bionic 20.04](https://www.linuxtechi.com/ubuntu-18-04-lts-desktop-installation-guide-screenshots/)
* [ROS Distribution Noetic](http://wiki.ros.org/noetic/Installation/Ubuntu)

## **Usage**

1. **Download** the bash script. `There is no need to download this entire repository.`

`$ wget https://raw.githubusercontent.com/cardboardcode/kinect_ros_setup/melodic-devel/rosi_ros-setup_kinect_driver.bash`

2. **Make** the script **executable**. Ensure that your terminal file directory is where you have downloaded the script to.

`$ chmod u+x rosi_ros-setup_kinect_driver.bash`

3. **Run** it and start installing.

`$ sudo ./rosi_ros-setup_kinect_driver.bash`

## **Tested Linux Systems**
* Ubuntu Focal Fossa 20.04.2 LTS

## **Issues**
Found this script useful or rage-inducing? Please post them in the Github [Issues](https://github.com/cardboardcode/kinect_ros_setup/issues). Any feedback is welcomed.

You can also refer to the reference [iai_kinect](https://github.com/code-iai/iai_kinect2) GitHub repository for more information on potential technical issues.

## **Acknowledgments**

The linux commands contained within the bash script is based on the installation instructions provided at [iai_kinect2](https://github.com/code-iai/iai_kinect2) GitHub repository.

Thanks to the ROS-Industrial Consortium Asia Pacific for letting me maintain this repository.
