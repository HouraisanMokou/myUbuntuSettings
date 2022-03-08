#mkdir -p ./turtlebot3_ws/src/
cd ./turtlebot3_ws/src/
#git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
#git clone https://github.com/ROBOTIS-GIT/turtlebot3.git
#git clone https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
cd ../ #&& catkin_make
echo $(pwd)
echo "source $(pwd)/turtlebot3_ws/devel/setup.bash"
echo "source $(pwd)/turtlebot3_ws/devel/setup.bash" >> ~/.bashrc
