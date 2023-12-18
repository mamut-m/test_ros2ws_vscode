#!/bin/bash
set -e

# Set the default build type
BUILD_TYPE=RelWithDebInfo


# in order to avoid these warnings in colcon build of python package
# /usr/lib/python3/dist-packages/setuptools/command/easy_install.py:158: EasyInstallDeprecationWarning: easy_install command is deprecated. Use build and pip and other standards-based tools.
#   warnings.warn(
# /usr/lib/python3/dist-packages/setuptools/command/install.py:34: SetuptoolsDeprecationWarning: setup.py install is deprecated. Use build and pip and other standards-based tools.
#   warnings.warn(
catkin build \
                --cmake-args \
                        "-DCMAKE_BUILD_TYPE=$BUILD_TYPE" \
                        "-DCMAKE_EXPORT_COMPILE_COMMANDS=On" \
                -Wall -Wextra -Wpedantic
