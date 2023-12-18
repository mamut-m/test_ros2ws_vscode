#!/bin/bash
if [ -f install/setup.bash ]; then source install/setup.bash; fi
set -xeu

# to avoid topics/pointcloud_publisher/test/test_flake8.py::test_flake8
#   Warning: SelectableGroups dict interface is deprecated. Use select.
#       -- Docs: https://docs.pytest.org/en/stable/warnings.html
PYTHONWARNINGS="ignore: SelectableGroups" \
        colcon test --merge-install 
        #--packages-select examples_rclpy_pointcloud_publisher
        colcon test-result --verbose

