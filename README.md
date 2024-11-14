# Tactip meta repository
This repository was created as a central place for project involving the TacTip optical tactile sensor. It contains as submodules the relevant repositories from [DexterousRobot](https://github.com/dexterousrobot), which accompany a number of [publications](#references) related to the TacTip. Furthermore, it contains a simulator for the Universal Robots UR5, which can be used to simulate the robot arm interfacing with the rest of the code through Common Robot Interface's RTDE controller. This was used to prepare the data collection for the TacTip, and familiarise and validate the code before letting it control a real life robot.s

# Project context
While the TacTip as an optical tactile sensor has been used in numerous works, the context of this meta repository is the Aerial Tactile Servoing project. For this, a new embodiment of the TacTip was designed and thus new training data had to be gathered and new models had to be trained. The goal of the project is to demonstrate tactile servoing on an aerial manipulator. The meta repository contains all the work related to this full workflow:
- Preparing robot control for data gathering
- Tuning image (pre-)processing parameters
- Shifting data in case of label shift
- Training pose- and shear prediction models on the training data
- Demoing the sensor with a demo tool

# How to use
If you came to this repository because you want to get started with the TacTip, you can proceed in the following way:
1. Read the README of tactile_servo_control


# References
Put references here