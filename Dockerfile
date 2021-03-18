FROM osrf/ros2
RUN apt-get update -y 

RUN mkdir /colcon_ws/src -p
WORKDIR colcon_ws
RUN bash -c "source /opt/ros/foxy/install/setup.sh && colcon build"
RUN git clone https://github.com/yangfuyuan/ydlidar_ros2.git ./src/ydlidar_ros2
RUN bash -c "source /opt/ros/foxy/install/setup.sh && colcon build"
