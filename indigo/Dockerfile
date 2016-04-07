FROM osrf/ros:indigo-desktop-full
MAINTAINER Kei Okada kei.okada@gmail.com
RUN apt-get update

## for docker in docker : https://gist.github.com/henrik-muehe/6155333
#CIRCLECI## Fake a fuse install
RUN apt-get install libfuse2; \
              mkdir -p /tmp/fuse; \
              cd /tmp/fuse ; apt-get download fuse; \
              cd /tmp/fuse ; dpkg-deb -x fuse_* .; \
              cd /tmp/fuse ; dpkg-deb -e fuse_*; \
              cd /tmp/fuse ; rm fuse_*.deb; \
              cd /tmp/fuse ; /bin/echo -en '#!/bin/bash\nexit 0\n' > DEBIAN/postinst; \
              cd /tmp/fuse ; dpkg-deb -b . /fuse.deb; \
              cd /tmp/fuse ; dpkg -i /fuse.deb; \
              rm -fr /tmp/fuse #CIRCLECI#

# make home directory (user name other than ubuntu is not woking because it is hard corded /usr/share/livecd-rootfs/live-build/auto/config)
# we should not run this on live-build
RUN getent group 999 || groupadd -g 999 ubuntu #CIRCLECI#
#RUN useradd -p `perl -e "print(crypt('ubuntu', 'jp'));"` ubuntu
RUN getent passwd 999 || useradd -m -u 999 -g 999 -p jpZUeiXA/a9ws ubuntu #CIRCLECI#
RUN echo "ubuntu ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/ubuntu

##
## setup packages
##
# install dev. tools
RUN apt-get -y install aptitude git ntp emacs vim wget curl

# for japanese environment
RUN apt-get -y install language-pack-gnome-ja latex-cjk-japanese xfonts-intl-japanese ibus-mozc

# ros dev. tools
RUN apt-get -y install python-catkin-tools

RUN apt-get -y install ros-$ROS_DISTRO-jsk-tools
RUN apt-get -y install ros-$ROS_DISTRO-jsk-rviz-plugins

# ros robot packages
RUN apt-get -y install ros-$ROS_DISTRO-denso
RUN apt-get -y install ros-$ROS_DISTRO-rtmros-nextage
RUN apt-get -y install ros-$ROS_DISTRO-hakuto
RUN apt-get -y install ros-$ROS_DISTRO-baxter-sdk ros-$ROS_DISTRO-baxter-simulator
RUN apt-get -y install ros-$ROS_DISTRO-fetch-gazebo-demo ros-$ROS_DISTRO-fetch-teleop
RUN apt-get -y install ros-$ROS_DISTRO-pr2-simulator ros-$ROS_DISTRO-pr2-navigation

RUN apt-get -y install ros-$ROS_DISTRO-rosemacs

