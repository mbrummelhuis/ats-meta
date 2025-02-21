#!/bin/bash

# Enable error signals
set -e

# Install the TacTip packages in the container
cd tactile_data && pip install -e . && cd ..
cd tactile_data_shear && pip install -e . && cd ..
cd tactile_servo_control && pip install -e . && cd ..
cd tactile_image_processing && pip install -e . && cd ..
cd tactile_learning && pip install -e . && cd ..
cd tactile_sim && pip install -e . && cd ..

# Launch hyperparam training
python3 tactile_servo_control/tactile_servo_control/learning/launch_hyper_training.py "$@"