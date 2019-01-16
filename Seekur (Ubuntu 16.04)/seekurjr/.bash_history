rosdep update && rosdep install -a && rosdep install rosarnl
#1543940343
sudo apt remove libarnl-java
#1543940354
sudo apt remove libarnl
#1543940365
sudo apt remove libarnl-java
#1543940374
sudo apt install -f
#1543940472
sudo apt remove libarnl
#1543940477
sudo apt remove libarnl-java
#1543940503
catkin_make
#1543940521
rosdep update && rosdep install -a && rosdep install rosarnl
#1543940610
ls
#1543940628
/etc/Aria
#1543940633
cd /etc/
#1543940635
ls
#1543940682
ls -alg Aria 
#1543940691
sudo su
#1543940819
cd ~/catkin_ws/
#1543940855
rosdep install rosarnl
#1543940888
grep -rin 'libaria-dev' .
#1543940905
sudo apt remove libaria-dev
#1543940914
rosdep install rosarnl
#1543945366
cd ~/Downloads/
#1543945367
ls
#1543945384
sudo dpkg -i arnl-base_1.9.4+ubuntu16_amd64.deb 
#1543945409
sudo dpkg -i libarnl_1.9.4+ubuntu16_amd64.deb 
#1543945418
sudo dpkg -i libarnl-java_1.9.4+ubuntu16_amd64.deb 
#1543945484
ls
#1543945486
ls -alh
#1543945496
sudo dpkg -i arnl-base-java_1.9.4+ubuntu16_amd64.deb 
#1543945504
sudo dpkg -i arnl-base-python_1.9.4+ubuntu16_amd64.deb 
#1543945516
sudo dpkg -i libarnl-java_1.9.4+ubuntu16_amd64.deb 
#1543945521
sudo dpkg -i libarnl-python_1.9.4+ubuntu16_amd64.deb 
#1543948643
ssh g@10.2.9.22
#1543948655
ping 10.2.9.22
#1543948701
cd /usr/local
#1543948701
ks
#1543948702
ls
#1543948784
ls -alh
#1543949416
ls
#1543949419
cd Arnl/
#1543949419
ls
#1543949422
cd include/
#1543949423
ls
#1543939201
roslaunch seekur_jr_gazebo seekur_jr_arm.launch 
#1543939231
cd ..
#1543939233
catkin_make
#1543939694
cd ~
#1543939699
cd ~/Downloads/
#1543939699
ls
#1543939733
sudo dpkg -i libarnl_1.9.4+ubuntu16_amd64.deb 
#1543939752
sudo dpkg -i libarnl-java_1.9.4+ubuntu16_amd64.deb 
#1543939797
sudo add-apt-repository ppa:webupd8team/java
#1543939805
sudo apt-get update
#1543939827
sudo apt-get install oracle-java9-installer
#1543939832
sudo apt-get update
#1543939838
sudo apt-get install oracle-java9-installer
#1543939845
sudo apt-get install oracle-java8-installer 
#1543941102
cd '/home/seekurjr/Downloads/Arnl-1.9.2prerelease20160613' 
#1543941102
ls 
#1543941103
ls -alh
#1543941108
make
#1543941142
sudo make install
#1543941669
cd ~/git/
#1543941669
ls
#1543941673
git clone https://github.com/MobileRobots/libPowerballArm
#1543941681
cd libPowerballArm/
#1543941682
ls
#1543941684
make 
#1543941713
ls
#1543941715
cd examples/
#1543941716
ls
#1543941718
ls -alh
#1543941723
./canopen_comm_test 
#1543941732
cd ..
#1543941732
ls
#1543941733
ls -alh
#1543941740
ls obj/
#1543941760
tree 
#1543941766
sudo apt install tree
#1543941788
find / -name php.ini
#1543941796
find / -name *.so .
#1543941802
find . -name *.so
#1543941804
ls
#1543941838
cd lib/
#1543941838
ls
#1543941839
pwd
#1543941869
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/seekurjr/git/libPowerballArm/lib
#1543941871
cd ..
#1543941872
ls
#1543941874
cd examples/
#1543941880
./canopen_comm_test 
#1543941935
ls
#1543941948
./canopen_device_connect 
#1543941985
./canopen_device_connect can0 12 10
#1543942101
./canopen_device_connect can0 3 10
#1543942201
roscd schunk_canopen_driver
#1543942202
ls
#1543942224
roslaunch schunk_canopen_driver move_to_home_position.launch
#1543942240
cd launch/
#1543942240
ls
#1543942242
ls -alh
#1543942266
sudo vim move_to_home_position.launch
#1543942291
roslaunch schunk_canopen_driver move_to_home_position.launch
#1543942373
roslaunch schunk_canopen_driver move_to_home_position.launch pcan_device:=can0  
#1543942398
roslaunch schunk_canopen_driver move_to_home_position.launch pcan_device:='can0'  
#1543943067
cd ..
#1543943070
cd ~/
#1543943071
ls
#1543943097
history | grep ros-kinetic
#1543943115
sudo apt remove ros-kinetic-schunk-canopen-drver
#1543943118
sudo apt remove ros-kinetic-schunk-canopen-driver
#1543943931
cd ~/catkin_ws/st
#1543943934
cd ~/catkin_ws/src 
#1543943938
git clone https://github.com/ipa320/schunk_robots
#1543944548
cd ..
#1543944552
catkin_make
#1543944580
sudo apt search arnl
#1543944605
sudo apt install libarnl
#1543945529
catkin_make
#1543945800
git clone https://github.com/MobileRobots/ros-arnl
#1543945809
mv ros-arnl/ src/
#1543945809
ls
#1543945814
catkin_make
#1543946408
ls
#1543946410
src
#1543946412
cd src/
#1543946413
ks
#1543946413
ls
#1543946453
git clone  https://github.com/amor-ros-pkg/rosaria
#1543946470
cd ..
#1543946472
catkin_make
#1543946659
cd src/
#1543946659
ls
#1543946663
git clone https://github.com/ros-industrial/ros_canopen
#1543946723
cd ..
#1543946727
rosdep install --from-paths src --ignore-src -y
#1543946988
grep -rin  libaria .
#1543947054
rosdep install --from-paths src --ignore-src -y
#1543947076
sudo apt remove libaria-dev
#1543947081
rosdep install --from-paths src --ignore-src -y
#1543947162
dpkg --remove libaria-dev
#1543947164
sudo dpkg --remove libaria-dev
#1543947167
rosdep install --from-paths src --ignore-src -y
#1543947447
catkin_make
#1543947469

#1543947575
sudo apt search class-loader
#1543947605
sudo apt install libclass-loader0d libclass-loader-dev
#1543947630
sudo apt-get install libboost-dev
#1543947636
catkin_make
#1543947748
dpkg -S /usr/include/boost/version.hpp 
#1543947779
sudo ldconfig
#1543947780
dpkg -S /usr/include/boost/version.hpp 
#1543947783
catkin_make
#1543947839
vim src/ros_canopen/canopen_chain_node/include/canopen_chain_node/ros_chain
#1543947852
vim src/ros_canopen/canopen_chain_node/include/canopen_chain_node/ros_chain.h 
#1543947870
catkin_make
#1543947876
catkin_make clean
#1543947880
catkin_make
#1543947908
vim src/ros_canopen/canopen_chain_node/include/canopen_chain_node/ros_chain.h 
#1543947923
catkin_make
#1543948003
ls
#1543948004
cd src/
#1543948004
ls
#1543948010
rm -rf ros_canopen/
#1543948026
cd ..
#1543948028
catkin_make
#1543948250
cd src/
#1543948252
ls
#1543948255
cd ros-arnl/
#1543948256
ls
#1543948272
grep -rin 'battery' .
#1543948458
cd /usr/local/Arnl/
#1543948461
ls
#1543948462
ls -alh
#1543948464
cd include/
#1543948464
ls
#1543948465
ls -alh
#1543950192
cd ~/catkin_ws/
#1543950200
catkin_make
#1543950453
source devel/setup.bash 
#1543950455
catkin_make
#1543955040
cd src/
#1543955041
ls
#1543955042
ls -alh
#1543955219
sudo nano /etc/environment
#1543955365
dmesg
#1543955385
ifconfig
#1543955389
sudo ip link set dev can0 down
#1543955392
ifconfig
#1543955395
sudo ip link set can0 type can bitrate 500000
#1543955398
sudo ip link set dev can0 up
#1543955402
ifconfig
#1543955408
sudo ifconfig can0 txqueuelen 20
#1543955424
roslaunch schunk_lwa4p robot.launch
#1543958056
exit
#1543955448
rosservice call /arm/driver/init
#1543955479
sudo apt search moveit
#1543955500
sudo apt search ros-kinetic-moveit
#1543955509
sudo apt search ros-kinetic-moveit*
#1543955516
sudo apt install ros-kinetic-moveit*
#1543955690
ls 
#1543955712
roslaunch schunk_lwa4p dashboard.launch 
#1543956625
rosservice call /arm/driver/init
#1543956642
roslaunch schunk_lwa4p dashboard.launch 
#1543957113
rosservice call /arm/driver/init
#1543958057
exit
#1543956801
git clone https://github.com/ammarnajjar/lwa4p_moveit_config
#1543956806
cd ..
#1543956808
catkin_make
#1543956846
roslaunch lwa4p_movit_config moveit_planning_execution.launch
#1543958058
exit
#1543938979
ls -alh
#1543938987
cd ~/catkin_ws/
#1543938988
ls
#1543938989
cd src/
#1543938990
ls
#1543939019
git clone https://github.com/MobileRobots/ros-arnl
#1543939046
git clone https://github.com/MobileRobots/amr-ros-config
#1543940931
cd ..
#1543940932
catkin_make
#1543941269
sudo apt-get install libboost-thread-dev libboost-system-dev
#1543941282
sudo apt autoremove
#1543941413
sudo apt-get install ros-indigo-schunk-canopen-driver
#1543941421
sudo apt-get install ros-kinetic-schunk-canopen-driver
#1543941477
modprobe -l
#1543941502
lsmod | grep usb
#1543941543
sudo vim /etc/modules
#1543941566
dmesg | grep can0
#1543941570
sudo ip link set can0 type can bitrate 500000 sudo ip link set up can0
#1543941594
sudo ip link set can0 type can bitrate 500000
#1543941602
sudo ip link set up can0
#1543941604
ifconfig
#1543941627
lsusb -t
#1543941902
history | grep power
#1543941905
history | grep -i power
#1543941910
/usr/local/Aria/examples/seekurPower -8 reset -29 reset[A
#1543942009
/usr/local/Aria/examples/seekurPower -8 reset -29 reset
#1543942310
roscore
#1543958060
exit
#1543942422
ls /dev/
#1543942432
ls /dev/ | grep can
#1543942436
ls /dev/ | grep -i can
#1543942503
rosrun rqt_logger_level rqt_logger_level
#1543942805
rqt_console 
#1543950178
catkin_
#1543950180
catkin_make
#1543953156
history | grep -i power
#1543953160
/usr/local/Aria/examples/seekurPower -8 reset -29 reset[A
#1543954999

#1543955207
sudo update-alternatives --config java
#1543955271
sudo apt-get install oracle-java8-installer
#1543955550
rostopic list
#1543955570
rostopic echo /arm/joint_states 
#1543956474
source devel/setup.bash 
#1543956496
ls
#1543956498
cd src/
#1543956499
ls
#1543956500
cd rosaria/
#1543956500
ls
#1543956501
sl -alh
#1543956504
cd ..
#1543956504
ls
#1543956508
cd ros-arnl/
#1543956509
ls
#1543956512
cd ..
#1543956552
/usr/local/Aria/examples/seekurPower -8 reset -29 reset[A
#1543956576
sudo ln /usr/local/Aria/examples/seekurPower /usr/bin/
#1543956606
seekurPower -8 reset -29 reset
#1543958061
exit
#1543958232
cat /etc/mod
#1543958236
cat /etc/modules
#1543958272
exit
#1543958065
history
#1543958086
sudo update-alternatives --config java
#1543958138
cat /etc/profile
#1543958152
history
#1543958160
cat /etc/environment 
#1543958166
sudo update-alternatives --config java
#1543958768
roscore
#1543959128
sudo shutdown
#1543959132
sudo shutdown now
#1543958776
rosrun rosaria RosAria _port:=/dev/ttyS0
#1543958851
cd /usr/local/Ar
#1543958854
cd /usr/local/Arnl/
#1543958854
ls
#1543958855
ls -alh
#1543958865
cd params
#1543958865
ls
#1543958879
vim seekurjr.p 
#1543958907
cd ..
#1543958928
vim Aria/params/seekurjr.p 
#1543958961
ping 192.168.0.1
#1543958531
cd catkin_ws/
#1543958533
cd src/
#1543958534
ls
#1543958535
ls -alh
#1543958544
cd schunk_robots/
#1543958545
ls
#1543958545
ls -alh
#1543958569
git config --get remote.origin.url
#1543958594
git show-branch
#1543958785
rosrun rosarnl rosarnl_node
#1543959154
sudo shutdown now
#1544042230
grep -rni ¨canopen_motor_node¨
#1544042243
grep -rni ¨canopen_motor_node¨ .
#1544042251
pwd
#1544042253
ls
#1544042260
cd catkin_ws/src/
#1544042260
ls
#1544042263
grep -rni ¨canopen_motor_node¨ .
#1544042285
grep -rni "canopen_motor_node" .
#1544044082
history | grep -i power
#1544044087
seekurPower -8 reset -29 reset
#1544046261
rosrun rosarnl rosarnl_node
#1544046413
clear
#1544046415
rosrun rosarnl rosarnl_node
#1544046470
clear
#1544046259
roscore
#1544046494
rosrun rosarnl rosarnl_node
#1544046648
ping 192.168.1.2
#1544047117
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544047142
cd catkin_ws/
#1544047144
cd src/
#1544047146
https://github.com/clearpathrobotics/LMS1xx.git
#1544047150
git clone https://github.com/clearpathrobotics/LMS1xx.git
#1544047154
cd ..
#1544047156
catkin_make
#1544047306
source devel/setup.bash 
#1544047324
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544047460
ping 192.168.0.1
#1544047500
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544047791
ping 192.168.1.2
#1544047898
inconfig
#1544047902
ifconfig
#1544047924
ping 192.168.0.2
#1544047938
rosrun lms1xx LMS1xx_node _host:=192.168.0.2
#1544047954
ping 192.168.0.1
#1544047961
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544047980
ifconfig 
#1544048003
ping 192.168.0.1
#1544048007
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544048105
ping 192.168.0.1
#1544048141
route -n
#1544048224
ifconfig
#1544048260
ping 192.168.1.2
#1544048264
ping 192.168.1.1
#1544048268
route -n
#1544048380
ping 192.168.1.14
#1544048391
ifconfig
#1544048398
route -n 
#1544048413
history | grep route
#1544048526
sudo ip route add 192.168.1.0/24 dev enp2s0
#1544048544
ping 192.168.1.14
#1544048554
sudo ip route add 192.168.0.0/24 dev enp2s0
#1544048559
ping 192.168.0.2
#1544048562
ping 192.168.0.1
#1544048570
route -n
#1544048593
sudo ip route add 192.168.0.0/24 via enp2s0
#1544048643
sudo htop
#1544048863
top
#1544048874
htop
#1544048971
sudo apt-get install ros-kinetic-lms1xx
#1544047337
roscore 
#1544049001
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544049140
sudo ip route del 192.168.0.0/24 via enp2s0
#1544049165
sudo ip route del 192.168.0.0/24 dev enp2s0
#1544049170
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544049181
sudo ip route add 192.168.0.0/24 dev enp2s0
#1544049183
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544049269
sudo ip route del 192.168.0.0/24 dev enp2s0
#1544049276
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544049285
sudo ip route add 192.168.0.0/24 dev enp2s0
#1544049286
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544049227
roscore 
#1544049311
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544049305
rcore
#1544049307
roscore 
#1544049333
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544049355
sudo apt-get remove ros-kinetic-lms1xx
#1544049371
roscore
#1544049390
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544049515
rosrun rosarnl rosarnl_node
#1544050072
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1544049700
route -n
#1544050095
ping 8.8.8.8
#1544050172
route -n
#1544050193
tracepath`192.168.0.1
#1544050197
tracepath 192.168.0.1
#1544050205
ping 192.168.0.1
#1544050216
tracepath 192.168.0.1
#1544050219
ping 192.168.0.1
#1544050249
route -n
#1544050321
ping 192.168.0.1
#1544050405
route -n
#1544050414
ifconfig
#1544050434
ip address
#1544050458
route -n
#1544050614
ping 192.168.0.1
#1544050616
route -n
#1544050636
sudo ip route add 192.168.0.0/24 dev enp2s0
#1544050642
route -n
#1544050665
ifconfig enp2s0 192.168.0.44 255.255.255.0
#1544050669
sudo ifconfig enp2s0 192.168.0.44 255.255.255.0
#1544050685
sudo ifconfig 192.168.0.44 255.255.255.0 enp2s0
#1544050692
sudo ifconfig 192.168.0.44 netmask 255.255.255.0 enp2s0
#1544050697
sudo ifconfig enp2s0 192.168.0.44 netmask 255.255.255.0
#1544050730
sudo ip route add 192.168.0.0/24 dev enp2s0
#1544050734
ip address
#1544050745
route -n
#1544050755
ping 192.168.0.1
#1544050767
route -n
#1544050816
ping 192.168.0.1
#1544050943
route -n
#1544051242
ping 10.0.125.1
#1544051246
ping 192.168.0.1
#1544051284
route -n
#1544051345
ping 192.168.0.1
#1544051347
route -n
#1544051381
ping 192.168.0.1
#1544051426
route -n
#1544051458
ping 192.168.0.1
#1544051516
route -n
#1544051558
ping 192.168.0.1
#1544051750
ifconfig
#1544051906
ip address
#1544051915
ping 192.168.0.1
#1544051920
route -n
#1544052262
ping 192.168.0.1
#1544052315
route -n
#1544052321
ping 192.168.0.1
#1544052325
route -n
#1544052365
ping 192.168.0.1
#1544052396
route -n
#1544052419
ping 192.168.0.1
#1544052460
sudo apt install traceroute
#1544052485
traceroute 192.168.0.1
#1544052502
ip address
#1544052698
ping 192.168.0.1
#1544052701
route -n
#1544052743
traceroute 192.168.0.1
#1544052779
ping 8.8.8.8
#1544052785
route -n
#1544052886
ping 8.8.8.8
#1544052887
traceroute 192.168.0.1
#1544052894
traceroute 8.8.8.8
#1544052896
route -n
#1544052961
ping 8.8.8.8
#1544053022
route -n
#1544053077
ping 192.168.0.1
#1544053080
ping 8.8.8.8
#1544053158
ping 192.168.0.1
#1544053159
ping 8.8.8.8
#1544053162
ifconfig
#1544053162
route
#1544053166
route -n
#1544053217
ping 8.8.8.8
#1544053220
ping 192.168.0.1
#1544053280
less /etc/NetworkManager/system-connections/itv_seekur_static_network 
#1544053284
sudo less /etc/NetworkManager/system-connections/itv_seekur_static_network 
#1544053317
traceroute 192.168.0.1
#1544053321
traceroute 8.8.8.8
#1544053395
sudo shutdown now
#1544122308
history
#1544122367
history | grep ros_canopen
#1544123586
seekurPower -29 reset
#1544125002
ls
#1544125007
cd Desktop/
#1544125008
ls
#1544125059
zip ros_canopen-kinetic.zip ros_canopen-kinetic/
#1544125066
ls
#1547033685
exit
#1547041479
rostopic list
#1547041580
rostopic echo  /rosarnl_node/lms1xx_1_laserscan /
#1547041589
rostopic echo /rosarnl_node/lms1xx_1_laserscan /
#1547041601
rostopic echo /rosarnl_node/lms1xx_1_laserscan 
#1547121838
roscore &
#1547121883
rosrun rosaria RosAria
#1547121917
rosrun rosaria RosAria _port:=/dev/ttyS
#1547121953
rosrun rosaria RosAria
#1547126703
rostopic list 
#1547126741
rosrun lms1xx LMS1xx_node 
#1547132778
roscore &
#1547132787
rosrun rosaria RosAria _port:=/dev/ttyS
#1547132790
rosrun rosaria RosAria _port:=/dev/ttyS0
#1547136841
exit
#1547134875
export ROS_IP="10.0.126.200"
#1547134954
rostopic list 
#1547134968
rostopic echo /cmd_vel /
#1547134970
rostopic echo /cmd_vel 
#1547135307
export ROS_IP="10.0.126.199"
#1547135311
rostopic echo /cmd_vel 
#1547135578
ping 10.0.126.200
#1547135587
ping 10.0.126.199
#1547136467
ping 10.0.126.200
#1547136495
rostopic echo /cmd_vel 
#1547136511
rostopic list
#1547136514
rostopic echo /cmd_vel 
#1547136853
exuit
#1547136858
exit
                                                                   roscore &
exit
#1547137500
rostopic list
#1547137513
rosrun lms1xx LMS1xx_node 
#1547137425
roscore &
#1547137451
rosrun rosaria RosAria
#1547137477
rosrun rosaria RosAria _port:=/dev/ttyS0
#1547138999
exit
#1547137547

#1547137698
export ROS_MASTER_URI="http://10.0.125.32:11311"
#1547137724
export ROS_IP="10.0.125.32"
#1547137803
ping 10.0.126.200"
#1547137807
ping 10.0.126.200
#1547137845
rostopic list
#1547137860
rostopic echo /cmd_vel 
#1547139017
exit
#1547205793
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1547206006
rostopic list
#1547206015
rosrun rviz rviz 
#1547206110
exit
#1547206410
rostopic list
#1547209118
export ROS_MASTER_URI="http://10.0.125.32:11311"
#1547209124
export ROS_IP="10.0.125.32"
#1547209138
roscore &
#1547209144
export ROS_MASTER_URI="http://10.0.125.32:11311"
#1547209147
export ROS_IP="10.0.125.32"
#1547209154
rosrun rosaria RosAria
#1547209170
rosrun rosaria RosAria _port:=/dev/ttyS0
#1547209479
exit
#1547209205
export ROS_MASTER_URI="http://10.0.125.32:11311"
#1547209213
export ROS_IP="10.0.125.32"
#1547209372
rostopic list
#1547209397
rostopic echo /RosAria/cmd_vel 
#1547209485
exit
#1547466939
rostopic lis
#1547466945
rostopic list
#1547466968
rostopic echo /tf
#1547465815
cd ..
#1547465838
cat /proc/pcan
#1547465842
cat /proc/pcan0
#1547465902
roscore &
#1547466010
roslaunch rosaria.launch
#1547466016
roslaunch rosaria
#1547466035
roslaunch rosarnl 
#1547466195
rosrun rviz rviz
#1547466872
rosrun rviz rviz 
#1547467765
rosrun lms1xx LMS1xx_node 
#1547468218
rosrun rviz rviz 
#1547468619
roslaunch seekur_jr_description state_publisher.launch 
#1547468672
roslaunch seekur_jr_description display.launch 
#1547469177
roslaunch 
#1547469570
rosrun rviz rviz 
#1547472001
rosrun rosarnl  rosarnl_node 
#1547472057
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1547472071
roscore &
#1547472076
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1547472090
rosrun lms1xx LMS1xx_node 
#1547472134
rosrun lms1xx LMS1xx_node _host:=192.168.1.2
#1547472215
rosrun lms1xx LMS1xx_node
#1547472230
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1547472240
rosrun lms1xx LMS1xx_node _host:=192.168.0.2
#1547472245
rosrun lms1xx LMS1xx_node _host:=192.168.0.3
#1547472250
rosrun lms1xx LMS1xx_node _host:=192.168.0.4
#1547472256
rosrun lms1xx LMS1xx_node _host:=192.168.0.5
#1547472270
rosrun lms1xx LMS1xx_node _host:=192.168.1.0
                                                                                                                                                                                                                                                                  #1547477348
ifconfig
#1547477363
cat /var/log/syslog
#1547477369
less /var/log/syslog
#1547477471
less /var/log/kern.log
#1547477519
ls -alg
#1547477526
cd /var/log/
#1547477526
ls
#1547477527
ls -alh
#1547477528
ls
#1547477535
sudo su
#1547481598
nmap --version
#1547481651
ip address
#1547481656
np -
#1547481681
nmap -sP 10.0.125.0/24
#1547481701
ip address
#1547481712
nmap -sP 10.2.1.0/24
#1547481934
nmap -sP -PA80,443 10.2.1.0/24
#1547482167
ip address
#1547482179
nmap -sP 192.168.0.0/24
#1547482294
nmap -F 192.168.0.0/24
#1547482539
nmap -P2111 192.168.0.0/24
#1547482543
nmap -PA2111 192.168.0.0/24
#1547482600
nmap -p2111 192.168.0.0/24
#1547482616
ip address
#1547482634
nmap -p22 192.168.0.0/24
#1547482716
nmap -p2111 10.0.125..0/24
#1547482719
nmap -p2111 10.0.125.0/24
#1547482738
nmap -p2111 10.2.1.0/24
#1547482818
sudo apt install wireshark
#1547482875
sudo wireshark
#1547482904
route -n
#1547482954
ifconfig
#1547481341
roscore &
#1547481378
rosrun rosaria RosAria _port:=/dev/ttyS0
#1547483961

#1547484003
rosrun lms1xx find_sick 
#1547484108
sudo init 0
#1547481387
rostopic list
#1547481406
rostopic echo /RosAria/battery_state_of_charge 
#1547481472
htop
#1547481511
sudo htop
#1547484236
roscore &
#1547484254
rosrun lms1xx find_sick 
#1547484265
rosrun lms1xx LMS1xx_node 
#1547485244
cat_make
#1547485249
catkin_make
#1547485603
rostopic list 
#1547484297
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1547484308
roscore &
#1547484320
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1547484332
rosrun lms1xx find_sick 
#1547484394
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1547484410
rosrun lms1xx find_sick 
#1547484565
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1547484675
cd ..
#1547484683
ls
#1547484688
cd Documents/
#1547484689
ls
#1547484698
cd .. 
#1547484703
cd git
#1547484704
ls
#1547484710
cd Projeto-embutidos/
#1547484711
ls
#1547484800
git clone https://gihub.com/AndreCid/Projeto-embutidos.git
#1547484835
git clone https://github.com/AndreCid/Projeto-embutidos.git
#1547485403
roscore &
#1547485421
roslaunch seekur_jr_description display.launch 
#1547485490
rosrun rosarnl rosarnl_node 
#1547485521
roslaunch seekur_jr_description display.launch 
#1547487784
rostopic echo /initialpose 
#1547487803
ro
#1547491266
sudo init 0
#1547552642
export ROS_MASTER_URI="http://10.0.125.32:11311"
#1547552650
export ROS_IP="10.0.125.32"
#1547552658
roscore &
#1547552674

#1547552705
rosrun rosarnl rosarnl_node 
#1547552740
rosrun lms1xx find_sick 
#1547552815
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1547552829
rosrun lms1xx find_sick 
#1547552862
rosrun lms1xx LMS1xx_node _host:=192.168.0.1
#1547554550
roslaunch seekur_jr_description display.launch 
#1547553215
export ROS_MASTER_URI="http://10.0.125.32:11311"
#1547553221
export ROS_IP="10.0.125.32"
#1547553270
roslaunch seekur_jr_description display.launch 
#1547553126
export ROS_MASTER_URI="http://10.0.125.32:11311"
#1547553132
export ROS_IP="10.0.125.32"
#1547553186
rosrun rosarnl rosarnl_node 
