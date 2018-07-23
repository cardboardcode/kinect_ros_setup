## Building Kinect Driver for ROS

## Setup
1. From the **terminal**, navigate to : ` cd ~/Developer_Laptop_setup/Hardware_Setup_Guide/Kinect_V2`
<br>
2. In the directory, you should see **a script** named: 
    -  `rosi_ros-setup_kinect_driver.bash` <br>This script installs the **iaikinect2 library** from [**this github repository**](https://github.com/code-iai/iai_kinect2), builds its dependencies and integrates the kinect driver as **executable ROS packages** under your **catkin workspace** under the name: `iai_kinect2`
<br>
3. Using the script, **run the following command** and the build process will begin.
    -	`. ~/Developer_Laptop_setup/Hardware_Setup_Guide/Kinect_V2/rosi_ros-setup_kinect_driver.bash`
<br>
4. As the script is running, you will be prompted to **input y/N**. 
    -    Type `y` and press `Enter` to continue
<br>
5. Once the script has **finished execution**, test it to see if it is working
    - **Run command** `roslaunch kinect2_bridge kinect2_bridge.launch` <br>This will start the kinect package running within ROS.
    - **Run command**: `rosrun rviz rviz` <br>This visualizes the XBOX output in an image viewer. **Click** the `ADD` button located near the bottom left of the GUI to add the image topic.
<br>
6. Still facing issues building the driver or confused about the setup? Please refer to [**this link**](https://github.com/code-iai/iai_kinect2) for **potential remedies**.



