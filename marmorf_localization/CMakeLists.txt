cmake_minimum_required(VERSION 2.8.3)
project(marmorf_localization)

find_package(catkin REQUIRED roslaunch)

catkin_package()

roslaunch_add_file_check(launch)

install(
  DIRECTORY launch config scripts
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(
  DIRECTORY scripts
  FILE_PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
