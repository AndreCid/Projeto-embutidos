# CMake generated Testfile for 
# Source directory: /home/seekurjr/catkin_ws/src/ros_canopen/socketcan_bridge
# Build directory: /home/seekurjr/catkin_ws/build/ros_canopen/socketcan_bridge
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_socketcan_bridge_gtest_test_conversion "/home/seekurjr/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/seekurjr/catkin_ws/build/test_results/socketcan_bridge/gtest-test_conversion.xml" "--return-code" "/home/seekurjr/catkin_ws/devel/lib/socketcan_bridge/test_conversion --gtest_output=xml:/home/seekurjr/catkin_ws/build/test_results/socketcan_bridge/gtest-test_conversion.xml")
add_test(_ctest_socketcan_bridge_rostest_test_to_socketcan.test "/home/seekurjr/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/seekurjr/catkin_ws/build/test_results/socketcan_bridge/rostest-test_to_socketcan.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/seekurjr/catkin_ws/src/ros_canopen/socketcan_bridge --package=socketcan_bridge --results-filename test_to_socketcan.xml --results-base-dir \"/home/seekurjr/catkin_ws/build/test_results\" /home/seekurjr/catkin_ws/src/ros_canopen/socketcan_bridge/test/to_socketcan.test ")
add_test(_ctest_socketcan_bridge_rostest_test_to_topic.test "/home/seekurjr/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/kinetic/share/catkin/cmake/test/run_tests.py" "/home/seekurjr/catkin_ws/build/test_results/socketcan_bridge/rostest-test_to_topic.xml" "--return-code" "/opt/ros/kinetic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/seekurjr/catkin_ws/src/ros_canopen/socketcan_bridge --package=socketcan_bridge --results-filename test_to_topic.xml --results-base-dir \"/home/seekurjr/catkin_ws/build/test_results\" /home/seekurjr/catkin_ws/src/ros_canopen/socketcan_bridge/test/to_topic.test ")
