FROM osrf/ros:noetic-desktop-full
#althack/ros:noetic-full

# ** [Optional] Uncomment this section to install additional packages. **
#
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
   && apt-get -y install --no-install-recommends  \
   \
   tmux \
   tmuxinator \
   #
   # Clean up
   && apt-get autoremove -y \
   && apt-get clean -y \
   && rm -rf /var/lib/apt/lists/*


RUN  apt-get update \
   && apt-get -y install --no-install-recommends  \
   && sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' \
   &&  apt-get install curl \
   # if you haven't already installed curl \
   && curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc |  apt-key add - \
   &&  apt-get update \
   &&  apt-get install python3-vcstool \
   && apt-get install python3-catkin-tools \
   # Clean up
   && apt-get autoremove -y \
   && apt-get clean -y \
   && rm -rf /var/lib/apt/lists/*

ENV DEBIAN_FRONTEND=dialog

# Set up auto-source of workspace for ros user
ARG WORKSPACE
#RUN echo "if [ -f ${WORKSPACE}/install/setup.bash ]; then source ${WORKSPACE}/install/setup.bash; fi" >> /home/ros/.bashrc
