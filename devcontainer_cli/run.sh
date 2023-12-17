#!/bin/bash
THIS_FILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
pushd $THIS_FILES_DIR/../

set -xeu

devcontainer  up --workspace-folder $(pwd)
devcontainer exec --workspace-folder $(pwd) /workspaces/test_ros2ws_vscode/clean.sh 
devcontainer exec --workspace-folder $(pwd) /workspaces/test_ros2ws_vscode/setup.sh 
devcontainer exec --workspace-folder $(pwd) /workspaces/test_ros2ws_vscode/build.sh 
devcontainer exec --workspace-folder $(pwd) /workspaces/test_ros2ws_vscode/test.sh 

popd