#!/bin/bash


################################################################################
  @Author: jbryan jbryan@impulse.net
  @Date:   2016-03-28 10:21:24
  @File Name: sha2-reBuild.sh
  @Last modified by:   jbryan
  @Last Modified time: 2016-05-26 09:29:36
  @Created time: 2016-03-28 10:21:24
################################################################################


#
# login jbryan
#
echo  "System;Device;IpDeviceMgmt"

#
# Main
#

if [ $# -lt 1 ]
then
        echo "Usage : $0 (all|321|331|335|450|550|560|650|ssip5000|ssip6000|ssip7000)"
        exit
fi

case "$1" in

321)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 321"\""
        ;;
331)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 331"\""
        ;;
335)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 335"\""
        ;;
450)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 450"\""
        ;;
550)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 550"\""
        ;;
560)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 560"\""
        ;;
650)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 650"\""
        ;;
ssip5000)
	echo "rebuildDefaultFile system "\"Polycom Soundstation IP 5000"\""
        ;;
ssip6000)
	echo "rebuildDefaultFile system "\"Polycom Soundstation IP 6000"\""
        ;;
ssip7000)
	echo "rebuildDefaultFile system "\"Polycom Soundstation IP 7000"\""
        ;;
all)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 321"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 331"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 335"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 450"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 550"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 560"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 650"\""
	echo "rebuildDefaultFile system "\"Polycom Soundstation IP 5000"\""
	echo "rebuildDefaultFile system "\"Polycom Soundstation IP 6000"\""
	echo "rebuildDefaultFile system "\"Polycom Soundstation IP 7000"\""
        ;;
*) echo Please run program with a valid model. See Usage for details
        ;;
esac
