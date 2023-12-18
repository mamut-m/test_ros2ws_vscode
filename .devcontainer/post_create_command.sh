#!/bin/bash
set -xeu

echo source /opt/ros/$ROS_DISTRO/setup.bash >> /home/ros/.bashrc
echo "if [ -f /workspace/install/setup.bash ]; then source /workspace/install/setup.bash; fi" >> /home/ros/.bashrc