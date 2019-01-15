#!/bin/bash

################################################################################
  @Author: jbryan jbryan@impulse.net
  @Date:   2016-01-29 09:19:09
  @File Name: reBuild-n-reset.sh
  @Last modified by:   jbryan
  @Last Modified time: 2016-05-26 09:29:10
  @Created time: 2016-01-29 09:19:09
################################################################################


# login jbryan
#
echo  "System;Device;IpDeviceMgmt"
#

for a in 301 320 321 330 331 335 430 450 501 550 600 601 650 670; do echo "rebuildDefaultFile system "\"Polycom Soundpoint IP ${a}"\" ; reset deviceType system "\"Polycom Soundpoint IP ${a}"\""; done

for b in 4000 5000 6000 7000; do echo "rebuildDefaultFile system "\"Polycom Soundstation IP ${b}"\" ; reset deviceType system "\"Polycom Soundstation IP ${b}"\"" ; done

for c in 300 310 400 410 500 1500 ; do echo "rebuildDefaultFile system "\"Polycom VVX ${c}"\" ; reset deviceType system "\"Polycom VVX ${c}"\"" ; done

for c in 8800 ; do echo "rebuildDefaultFile system "\"Polycom Trio${c}"\" ; reset deviceType system "\"Polycom Trio${c}"\"" ; done

