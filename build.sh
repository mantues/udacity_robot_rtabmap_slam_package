sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y gazebo7
sudo apt-get install -y gedit
export QT_X11_NO_MITSHM=1
sudo apt-get install -y ros-kinetic-navigation
sudo apt-get install -y ros-kinetic-map-server
sudo apt-get install -y ros-kinetic-move-base
sudo apt-get install -y ros-kinetic-amcl
sudo apt-get install -y libignition-math2-dev protobuf-compiler
sudo apt-get install -y ros-kinetic-rtabmap-ros
mkdir -p ~/Desktop/udacity_ws/src
cd ~/Desktop/udacity_ws/src
git clone https://github.com/mantues/udacity_robot_ball_chaser_kinetic_package
git clone -b kinetic-devel https://github.com/introlab/rtabmap_ros
chmod +x ~/Desktop/udacity_ws/src/udacity_robot_ball_chaser_kinetic_package/teleop_twist_keyboard/*.py 
cd ~/Desktop/udacity_ws
rosdep install --from-paths src --ignore-src --rosdistro kinetic -y
catkin_make