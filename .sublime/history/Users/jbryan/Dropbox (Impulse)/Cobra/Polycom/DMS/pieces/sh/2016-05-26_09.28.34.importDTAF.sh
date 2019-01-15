#!/bin/bash


################################################################################
  @Author: jbryan jbryan@impulse.net
  @Date:   2015-12-15 16:32:47
  @File Name: importDTAF.sh
  @Last modified by:   jbryan
  @Last Modified time: 2016-05-26 09:28:34
  @Created time: 2015-12-15 16:32:47
################################################################################


#
# login jbryan
#
echo  "System;DeviceType;SIP"
#

for a in 301 320 321 330 331 335 430 450 501 550 600 601 650 670
	do
		echo "import /usr/local/broadworks/bw_base/persistent/backups/Polycom_Soundpoint_IP_${a}.zip"
	done

for b in 4000 5000 6000 7000
	do
		echo "import /usr/local/broadworks/bw_base/persistent/backups/Polycom_Soundstation_IP_${b}.zip"
	done

for c in 500 1500
	do
		echo "import /usr/local/broadworks/bw_base/persistent/backups/Polycom_VVX_${c}.zip"
	done

#
# Panasonics go here
#
for d in 500
	do
		echo "import /usr/local/broadworks/bw_base/persistent/backups/Panasonic_KX_TGP_${d}.zip"
	done

#
# Cobra Test Devices Here (Polycom)
#
for e in 560 320
	do
		echo "import /usr/local/broadworks/bw_base/persistent/backups/Cobra_Soundpoint_IP_${e}.zip"
	done

echo
echo
echo
echo

#
# Other Devices
#

echo "import /usr/local/broadworks/bw_base/persistent/backups/Business_Communicator_-_Mobile.zip"
echo "import /usr/local/broadworks/bw_base/persistent/backups/Business_Communicator_-_PC.zip"

echo

