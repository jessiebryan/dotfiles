#!/bin/bash


################################################################################
  @Author: jbryan jbryan@impulse.net
  @Date:   2016-01-28 21:43:34
  @File Name: reBuild.sh
  @Last modified by:   jbryan
  @Last Modified time: 2016-05-26 09:29:19
  @Created time: 2016-01-28 21:43:34
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
        echo "Usage : $0 (all|301|320|321|330|331|335|430|450|500|501|550|560|600|601|650|670|ssip4000|ssip5000|ssip6000|ssip7000|vvx101|vvx201|vvx300|vvx301|vvx310|vvx400|vvx410|vvx401|vvx500|vvx501|vvx600|vvx601|vvx1500|trio880)"
        exit
fi

case "$1" in

301)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 301"\""
        ;;
320)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 320"\""
        ;;
321)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 321"\""
        ;;
330)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 330"\""
        ;;
331)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 331"\""
        ;;
335)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 335"\""
        ;;
430)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 430"\""
        ;;
450)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 450"\""
        ;;
500)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 500"\""
        ;;
501)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 501"\""
        ;;
550)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 550"\""
        ;;
560)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 560"\""
        ;;
600)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 600"\""
        ;;
601)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 601"\""
        ;;
650)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 650"\""
        ;;
670)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 670"\""
        ;;
ssip4000)
	echo "rebuildDefaultFile system "\"Polycom Soundstation IP 4000"\""
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
vvx101)
	echo "rebuildDefaultFile system "\"Polycom VVX 101"\""
        ;;
vvx201)
	echo "rebuildDefaultFile system "\"Polycom VVX 201"\""
        ;;
vvx300)
	echo "rebuildDefaultFile system "\"Polycom VVX 300"\""
        ;;
vvx310)
	echo "rebuildDefaultFile system "\"Polycom VVX 310"\""
        ;;
vvx301)
	echo "rebuildDefaultFile system "\"Polycom VVX 301"\""
        ;;
vvx400)
	echo "rebuildDefaultFile system "\"Polycom VVX 400"\""
        ;;
vvx401)
	echo "rebuildDefaultFile system "\"Polycom VVX 401"\""
        ;;
vvx410)
	echo "rebuildDefaultFile system "\"Polycom VVX 410"\""
        ;;
vvx500)
	echo "rebuildDefaultFile system "\"Polycom VVX 500"\""
        ;;
vvx501)
	echo "rebuildDefaultFile system "\"Polycom VVX 501"\""
        ;;
vvx600)
	echo "rebuildDefaultFile system "\"Polycom VVX 600"\""
        ;;
vvx601)
	echo "rebuildDefaultFile system "\"Polycom VVX 601"\""
        ;;
vvx1500)
	echo "rebuildDefaultFile system "\"Polycom VVX 1500"\""
        ;;
trio8800)
	echo "rebuildDefaultFile system "\"Polycom Trio8800"\""
        ;;
all)
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 301"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 320"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 321"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 330"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 331"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 335"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 430"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 450"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 500"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 501"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 550"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 560"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 600"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 601"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 650"\""
	echo "rebuildDefaultFile system "\"Polycom Soundpoint IP 670"\""
	echo "rebuildDefaultFile system "\"Polycom Soundstation IP 4000"\""
	echo "rebuildDefaultFile system "\"Polycom Soundstation IP 5000"\""
	echo "rebuildDefaultFile system "\"Polycom Soundstation IP 6000"\""
	echo "rebuildDefaultFile system "\"Polycom Soundstation IP 7000"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 101"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 201"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 300"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 301"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 310"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 400"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 401"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 410"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 500"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 501"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 600"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 601"\""
	echo "rebuildDefaultFile system "\"Polycom VVX 1500"\""
	echo "rebuildDefaultFile system "\"Polycom Trio8800"\""
        ;;
*) echo Please run program with a valid model. See Usage for details
        ;;
esac
