# CMake generated Testfile for 
# Source directory: /home/seekurjr/catkin_ws/src/schunk_robots/schunk_pg70
# Build directory: /home/seekurjr/catkin_ws/build/schunk_robots/schunk_pg70
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_schunk_pg70_roslaunch-check_launch "/home/seekurjr/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/seekurjr/catkin_ws/build/test_results/schunk_pg70/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/seekurjr/catkin_ws/build/test_results/schunk_pg70" "/opt/ros/kinetic/share/roslaunch/cmake/../scripts/roslaunch-check -o '/home/seekurjr/catkin_ws/build/test_results/schunk_pg70/roslaunch-check_launch.xml' '/home/seekurjr/catkin_ws/src/schunk_robots/schunk_pg70/launch' ")
add_test(_ctest_schunk_pg70_rostest_urdf_test_urdf.test "/home/seekurjr/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/seekurjr/catkin_ws/build/test_results/schunk_pg70/rostest-urdf_test_urdf.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/seekurjr/catkin_ws/src/schunk_robots/schunk_pg70 --package=schunk_pg70 --results-filename urdf_test_urdf.xml --results-base-dir \"/home/seekurjr/catkin_ws/build/test_results\" /home/seekurjr/catkin_ws/src/schunk_robots/schunk_pg70/urdf/test/urdf.test ")
