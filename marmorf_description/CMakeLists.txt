cmake_minimum_required(VERSION 2.8.3)
project(marmorf_description)

find_package(catkin REQUIRED COMPONENTS roslaunch)

catkin_package()
catkin_add_env_hooks(50.marmorf_description
  SHELLS sh DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/env-hooks)

roslaunch_add_file_check(launch)

install(
  DIRECTORY launch urdf config
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
