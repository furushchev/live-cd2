^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package live-cd
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

2.0.4 (2016-06-03)
------------------
* Show version tag in meny and add CHANGELOG.rst to home directory `#7 <https://github.com/k-okada/live-cd2/issues/7>`_

  * add CHANGELOG.rst
  * add persistent for grub.cfg
  * use make command to build docker images
  * update grub.cfg menu for UEFI boot
  * update mkae-efi-iso.sh before running within vagrant
  * fix https://github.com/k-okada/live-cd2/pull/6/commits/ab9e1f702c321d0b24d3067f85946a7520b00cfa, we can not get git version within docker

* Contributors: Kei Okada

2.0.3 (2016-05-31)
------------------
* add clive-cd version on boot menu (https://github.com/k-okada/live-cd2/issues/6 )
* add comment on live-cd version within .bashrc (https://github.com/k-okada/live-cd2/issues/6 )
* cirlce.yml : docker repo name is tork not tork-a (https://github.com/k-okada/live-cd2/issues/6 )

* Contributors: Kei Okada

2.0.2 (2016-05-30)
------------------
* download ros_seminar to ~/Downloads (`#5 <https://github.com/k-okada/live-cd2/issues/5>`_)
* Fix master broken 05/28 (`#4 <https://github.com/k-okada/live-cd2/issues/4>`_ )

  * add https://github.com/RobotWebTools/rosbridge_suite/pull/219
  * https://github.com/tork-a/hakuto/pull/63 and https://github.com/tork-a/hakuto/commit/f0338a7bb2852c599bd19be261997bdd9a871375 has already been released
  * add time stamp to Dockerfile to run apt-get update everytime

* add hakuto apps, release on docker/hub (`#3 <https://github.com/k-okada/live-cd2/issues/3>`_)
* rename docker image name to tork/indigo for docker hub (`#2 <https://github.com/k-okada/live-cd2/issues/2>`_)

  * cut first n line until first MAINTAINER appears
  * add push target
  * indigo/Dockerfile: fix for catkin_tools > 0.4.x
  * rename docker image name to tork/indigo for docker hub

* Contributors: Kei Okada

2.0.1 (2016-04-13)
------------------
* add 2nd gen of live-cd
* first commit
* Contributors: Kei Okada
