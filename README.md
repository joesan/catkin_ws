# catkin_ws

This is the reference project for setting up a new ROS project! 

```diff
- ALERT: This is just a reference project. Head over to [this project here](https://github.com/joesan/) for a comprehensive useful project!
```

## Pre-Requisites

Depending on which OS you use, you need to install the ros related software and the packages. Proceed to the [official installation](http://wiki.ros.org/ROS/Installation) site from ROS and install as per the steps given! For me it is Ubuntu 20.04 as of this writing, so I need to [look here](http://wiki.ros.org/noetic/Installation/Ubuntu) for the ROS packages that correspond to my OS!

HINT: I have a local .bash_profile where I have all my profile related configurations and environments. As per the ROS official documentation, to set up the environment, you need to source the setup.bash file which is located in the /opt/ros/noetic/ folder. But this approach did not work for me, so I had to source this file from the .bash_profile and source the .bash_profile as a whole in the .bashrc. Have a look [here](https://github.com/joesan/bash_profile/tree/master/linux) for the .bash_profile

## Create a new Project / Workspace

The official documentation / tutorials [here](http://wiki.ros.org/ROS/Tutorials/InstallingandConfiguringROSEnvironment#Create_a_ROS_Workspace) takes you through a step-by-step process to create your new workspace and the packages later on. So make sure to go through it!

Once you create a new Workspace, you need to overlay the newly created Workspace environment and you do this again by sourcing it. So for me I did not want to source each and every new workspace that I create, so I came up with this idea of dynamically sourcing such workspace envirionments. All you need ot do is to add this line in your .bash_profile:

```
# Dynamically source all setup.bash files from multiple catkin ros workspaces
find /home/$USER/Projects/Private/ros-projects -wholename '*/devel/setup.bash' | xargs source
```

## Create a new Package inside the Workspace

Follow the instructions [here](http://wiki.ros.org/ROS/Tutorials/CreatingPackage#ROS.2FTutorials.2Fcatkin.2FCreatingPackage.Creating_a_catkin_Package) to create a new package! It is that straightforward and simple!

So now you have your first package created, just go and have a look at the dependencies for your package by following the documentation [here](http://wiki.ros.org/ROS/Tutorials/CreatingPackage#ROS.2FTutorials.2Fcatkin.2FCreatingPackage.package_dependencies)

Try to finish your Package creation by actually trying to build it. Follow the instructions [here](http://wiki.ros.org/ROS/Tutorials/BuildingPackages)

## Import the Project / Workspace in CLion

I have been a heavy user of IntelliJ and I love the IDE for what it offers to write Java / Scala applications. So I could not resist to use CLion for doing development with ROS. Even though CLion has a commercial license and is not in a community version like IntelliJ, I would still recommend using it for a trial and decide to go for a License if you need!

A few tips on setting up your ROS workspace in CLion

1. After you download and unpack CLion on your local machine, make sure to create a Desktop Short cut entry

2. CLion expects that you use the same bash shell session where you source the ROS bash setup file, but you cannot guarantee this when you launch CLion from the desktop shortcut entry that you crated in step 1, so to acheive this, do the following:

```
Open the jetbrains-clion.desktop located in the .local folder:

~/.local/share/applications/jetbrains-clion.desktop

In this desktop entry, modify the Exec= line as:

Exec=bash -i -c "/opt/softwares/clion-2020.2.1/bin/clion.sh" %f
```

That's it! Now just import the project and the workspace in CLion and you are good to go!

## Running the demo nodes

There are two options to run the demo:

1. Without a launcn file
2. With a launch file

### Running without the launch file

Open a new terminal and type

```
roscore
```

To run talker open a new terminal and type

```
cd catkin_ws
source devel/setup.bash
rosrun beginner_tutorials talker
```

To run listener open a new terminal and type

```
cd catkin_ws
source devel/setup.bash
rosrun beginner_tutorials listener
```
To stop the program press ctrl+C in each of the three terminals.

## Running using the launch file

Open a new terminal and type

```
roscore
```

Open another termin and use the launch file to run both the talker and listener at once

```
cd catkin_ws
source devel/setup.bash
roslaunch beginner_tutorials hw10.launch
```

To stop the program press ctrl+C in each of the two terminals.
