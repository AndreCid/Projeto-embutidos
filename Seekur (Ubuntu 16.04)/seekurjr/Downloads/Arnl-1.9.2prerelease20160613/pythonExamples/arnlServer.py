"""
Adept MobileRobots Advanced Robotics Navigation and Localization (ARNL)
Version 1.9.2prerelease20160613

Copyright (C) 2004-2005 ActivMedia Robotics LLC
Copyright (C) 2006-2009 MobileRobots Inc.
Copyright (C) 2010-2016 Adept Technology, Inc.

All Rights Reserved.

Adept MobileRobots does not make any representations about the
suitability of this software for any purpose.  It is provided "as is"
without express or implied warranty.

The license for this software is distributed as LICENSE.txt in the top
level directory.

robots@mobilerobots.com
Adept MobileRobots
10 Columbia Drive
Amherst, NH 03031
+1-603-881-7960

"""




from AriaPy import *
from ArNetworkingPy import *
from BaseArnlPy import *
from ArnlPy import *
import sys

# This is an example robot server written in Python, using ARNL for
# path planning and localization (it is a slightly simplified version of
# guiServer.cpp written in Python).  
# After it connects to the robot or simulator, connect with MobileEyes.

# Global library initialization, just like the C++ API:
Aria.init()
Arnl.init()

argParser = ArArgumentParser(sys.argv)
argParser.loadDefaultArguments()

robot = ArRobot()
robotConnector = ArRobotConnector(argParser, robot)

if not robotConnector.connectRobot():
  ArLog.log(ArLog.Normal, 'Error: could not connect to robot. Exiting.')
  Aria.exit(3)

server = ArServerBase()
serverOpener = ArServerSimpleOpener(argParser)

laserConnector = ArLaserConnector(argParser, robot, robotConnector)

if not Aria.parseArgs():
  print 'error parsing args'
  Aria.logOptions()
  Aria.exit(1)

sonar = ArSonarDevice()
robot.addRangeDevice(sonar)

robotConfig = ArRobotConfig(robot)

robot.runAsync(True) 

ArLog.log(ArLog.Normal, 'Connecting to laser(s) as configured in parameters...')
if not laserConnector.connectLasers():
  ArLog.log(ArLog.Normal, 'Error, could not connect to laser(s). Exiting.')
  Aria.exit(2)

robot.lock()
laser = robot.findLaser(1)
if laser == None or not laser.isConnected():
  ArLog.log(ArLog.Normal, 'No laser, cannot perform localization or navigation.')
  Aria.exit(4)
robot.unlock()

# Create map object, with "examples" as the default directory.
# You can change this to another directory containing
# maps. Don't forget the slash "/" on the end.
mapDir = Aria.getDirectory() + "examples/";
print "\n* Will look for maps in the directory: " + mapDir + " *\n"
map = ArMap(mapDir)

# Make the localization task (using the laser device)
locTask = ArLocalizationTask(robot, laser, map)

# Make the path planning task (using both laser and sonar to avoid obstacles)
pathTask = ArPathPlanningTask(robot, laser, sonar, map);

print "Opening server on port 7272..."
if (not server.open(7272)):
    print "Could not open server on port 7272, exiting"
    sys.exit(1)
print "Server is open on port 7272."


# Create services for remote clients (e.g. MobileEyes):

# Provides localization info:
serverInfoLocalization = ArServerInfoLocalization(server, robot, locTask)

# Allows client to manually trigger relocalization and a given point:
serverLocHandler = ArServerHandlerLocalization(server, robot, locTask)

# Provides the map:
serverMap = ArServerHandlerMap(server, map)

# Provides the planned path:
serverInfoPath = ArServerInfoPath(server, robot, pathTask)

# Information about the robot:
serverInfoRobot = ArServerInfoRobot(server, robot)

# Info from range sensors:
serverInfoSensor = ArServerInfoSensor(server, robot)

# Graphics to draw on the map:
drawings = ArServerInfoDrawings(server)
drawings.addRobotsRangeDevices(robot)

# Modes for driving the robot:
modeGoto = ArServerModeGoto(server, robot, pathTask, map, locTask.getHomePose())
modeStop = ArServerModeStop(server, robot, 1)
modeRatioDrive = ArServerModeRatioDrive(server, robot)
modeWander = ArServerModeWander(server, robot)
modeStop.addAsDefaultMode()
modeStop.activate()

# Simple text commands ("custom commands") in MobileEyes):
commands = ArServerHandlerCommands(server)
uCCommands = ArServerSimpleComUC(commands, robot)
loggingCommands = ArServerSimpleComMovementLogging(commands, robot)
configCommands = ArServerSimpleComLogRobotConfig(commands, robot)
serverInfoPath.addControlCommands(commands)

# Service that allows client to read and change ArConfig parameters (used 
# throughout aria and arnl). Arnl.getTypicalDefaultParamFileName() returns
# "params/default-arnl.p".
configFileName = Arnl.getTypicalParamFileName();
print "Will use config file: ", configFileName
serverConfig = ArServerHandlerConfig(server, Aria.getConfig(), Arnl.getTypicalDefaultParamFileName(), Aria.getDirectory())

# Load the configuration
print "Loading config file..."
if (not Aria.getConfig().parseFile(configFileName)):
  print "Warning: Error loading configuration file \"%s\", exiting." % configFileName
    
# Run the robot and server threads in the background:
print "Running..."
server.runAsync()
robot.enableMotors()
robot.waitForRunExit()

