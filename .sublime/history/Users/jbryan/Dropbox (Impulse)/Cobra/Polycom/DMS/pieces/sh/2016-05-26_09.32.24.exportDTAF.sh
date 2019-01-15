#!/bin/bash


################################################################################
#  @Author: jbryan jbryan@impulse.net
#  @Date:   2016-05-26 09:29:53
#  @File Name: bwdeploy.sh
#  @Last modified by:   jbryan
#  @Last Modified time: 2016-05-26 09:32:24
#  @Created time: 2016-05-26 09:29:53
################################################################################



#
# login jbryan
#
echo  "System;DeviceType;SIP"
#

for a in 301 320 321 330 331 335 430 450 501 550 600 601 650 670
	do
		echo "export "\"Polycom Soundpoint IP ${a}"\" /usr/local/broadworks/bw_base/persistent/backups"
	done

for b in 4000 5000 6000 7000
	do
		echo "export "\"Polycom Soundstation IP ${b}"\" /usr/local/broadworks/bw_base/persistent/backups"
	done

for c in 500 1500
	do
		echo "export "\"Polycom VVX ${c}"\" /usr/local/broadworks/bw_base/persistent/backups"
	done

#
# Panasonics go here
#
for d in 500
	do
		echo "export "\"Panasonic KX TGP ${d}"\" /usr/local/broadworks/bw_base/persistent/backups"
	done

#
# Cobra Test Devices Here (Polycom)
#
for e in 560 320
	do
		echo "export "\"Cobra Soundpoint IP ${e}"\" /usr/local/broadworks/bw_base/persistent/backups"
	done

echo
echo
echo
echo

#
# Other Devices
#
echo "export "\"Adtran TA900 Series-Trunk"\" /usr/local/broadworks/bw_base/persistent/backups"
echo "export "\"Business Communicator - Mobile"\" /usr/local/broadworks/bw_base/persistent/backups"
echo "export "\"Business Communicator - PC"\" /usr/local/broadworks/bw_base/persistent/backups"
echo "export "\"Bria Softphone"\" /usr/local/broadworks/bw_base/persistent/backups"
echo
