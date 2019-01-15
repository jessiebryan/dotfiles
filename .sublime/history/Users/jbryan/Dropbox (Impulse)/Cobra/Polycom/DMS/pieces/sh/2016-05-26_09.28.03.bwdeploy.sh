#!/bin/bash


################################################################################
  @Author: jbryan jbryan@impulse.net
  @Date:   2016-01-29 09:17:34
  @File Name: bwdeploy.sh
  @Last modified by:   jbryan
  @Last Modified time: 2016-05-26 09:28:03
  @Created time: 2016-01-29 09:17:34
################################################################################


cd "/Users/jbryan/Dropbox/Cobra/Polycom/DMS/impulse/"
PRODAS=as1.impulsevoip.net

function spip301() {
	echo Polycom_*301/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*301/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*301/
}

function spip320() {
	echo Polycom_*320/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*320/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*320/
}

function spip321() {
	echo Polycom_*321/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*321/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*321/
}

function spip330() {
	echo Polycom_*330/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*330/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*330/
}

function spip331() {
	echo Polycom_*331/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*331/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*331/
}

function spip335() {
	echo Polycom_*335/BWDEVICE_%BWMACADDRESS%.cfg.template 
	scp -o "PreferredAuthentications=password" Polycom_*335/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*335/
}

function spip430() {
	echo Polycom_*430/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*430/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*430/
}

function spip450() {
	echo Polycom_*450/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*450/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*450/
}

function spip501() {
	echo Polycom_*501/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*501/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*501/
}

function spip550() {
	echo Polycom_*550/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*550/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*550/
}

function spip560() {
	echo Polycom_*560/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*560/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*560/
}

function cspip560() {
	echo Cobra_*560/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*560/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Cobra_*560/
}

function spip600() {
	echo Polycom_Soundpoint_IP_*600/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_Soundpoint_IP_*600/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_Soundpoint_IP_*600/
}

function spip601() {
	echo Polycom_Soundpoint_IP_*601/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_Soundpoint_IP_*601/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_Soundpoint_IP_*601/
}

function spip650() {
	echo Polycom_Soundpoint_IP_*650/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_Soundpoint_IP_*650/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_Soundpoint_IP_*650/
}

function spip670() {
	echo Polycom_Soundpoint_IP_*670/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_Soundpoint_IP_*670/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_Soundpoint_IP_*670/
}

function ssip4000() {
	echo Polycom_*4000/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*4000/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*4000/
}

function ssip5000() {
	echo Polycom_*5000/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*5000/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*5000/
}

function ssip6000() {
	echo Polycom_*6000/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*6000/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*6000/
}

function ssip7000() {
	echo Polycom_*7000/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_*7000/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_*7000/
}

function vvx1500() {
	echo Polycom_VVX_1500/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_1500/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_1500/
}

function vvx101() {
	echo Polycom_VVX_101/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_101/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_101/
}

function vvx201() {
	echo Polycom_VVX_201/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_201/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_201/
}

function vvx300() {
	echo Polycom_VVX_300/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_300/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_300/
}

function vvx301() {
	echo Polycom_VVX_301/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_301/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_301/
}

function vvx300key() {
	echo Polycom_VVX_300_Key/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_300_Key/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_300_Key/
}

function vvx310() {
	echo Polycom_VVX_310/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_310/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_310/
}

function vvx400() {
	echo Polycom_VVX_400/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_400/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_400/
}

function vvx401() {
	echo Polycom_VVX_401/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_401/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_401/
}

function vvx410() {
	echo Polycom_VVX_410/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_410/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_410/
}

function vvx500() {
	echo Polycom_VVX_500/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_500/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_500/
}

function vvx501() {
	echo Polycom_VVX_501/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_501/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_501/
}

function vvx600() {
	echo Polycom_VVX_600/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_600/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_600/
}

function vvx601() {
	echo Polycom_VVX_601/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_VVX_601/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_VVX_601/
}

function trio8800() {
	echo Polycom_Trio8800/BWDEVICE_%BWMACADDRESS%.cfg.template
	scp -o "PreferredAuthentications=password" Polycom_Trio8800/BWDEVICE_%BWMACADDRESS%.cfg.template bwadmin@${PRODAS}:/var/broadworks/IpDeviceConfig/type/Polycom_Trio8800/
}

#
# Main
#

if [ $# -lt 1 ]
then
        echo "Usage : $0 (301|320|321|330|331|335|430|450|500|501|550|560|c560|600|601|650|670|ssip4000|ssip5000|ssip6000|ssip7000|vvx101|vvx201|vvx300|vvx301|vvx300key|vvx310|vvx400|vvx401|vvx410|vvx500|vvx501|vvx600|vvx601|vvx1500|trio8800)"
        exit
fi

case "$1" in

301) echo Deploying BWDEVICE file for $1
        spip301
        ;;
320) echo Deploying BWDEVICE file for $1
        spip320
        ;;
321) echo Deploying BWDEVICE file for $1
        spip321
        ;;
330) echo Deploying BWDEVICE file for $1
        spip330
        ;;
331) echo Deploying BWDEVICE file for $1
        spip331
        ;;
335) echo Deploying BWDEVICE file for $1
        spip335
        ;;
430) echo Deploying BWDEVICE file for $1
        spip430
        ;;
450) echo Deploying BWDEVICE file for $1
        spip450
        ;;
500) echo Deploying BWDEVICE file for $1
        spip500
        ;;
501) echo Deploying BWDEVICE file for $1
        spip501
        ;;
550) echo Deploying BWDEVICE file for $1
        spip550
        ;;
560) echo Deploying BWDEVICE file for $1
        spip560
        ;;
c560) echo Deploying BWDEVICE file for $1
        cspip560
        ;;
600) echo Deploying BWDEVICE file for $1
        spip600
        ;;
601) echo Deploying BWDEVICE file for $1
        spip601
        ;;
650) echo Deploying BWDEVICE file for $1
        spip650
        ;;
670) echo Deploying BWDEVICE file for $1
        spip670
        ;;
ssip4000) echo Deploying BWDEVICE file for $1
        ssip4000
        ;;
ssip5000) echo Deploying BWDEVICE file for $1
        ssip5000
        ;;
ssip6000) echo Deploying BWDEVICE file for $1
        ssip6000
        ;;
ssip7000) echo Deploying BWDEVICE file for $1
        ssip7000
        ;;
vvx101) echo Deploying BWDEVICE file for $1
        vvx101
        ;;
vvx201) echo Deploying BWDEVICE file for $1
        vvx201
        ;;
vvx300) echo Deploying BWDEVICE file for $1
        vvx300
        ;;
vvx301) echo Deploying BWDEVICE file for $1
        vvx301
        ;;
vvx300key) echo Deploying BWDEVICE file for $1
        vvx300key
        ;;
vvx310) echo Deploying BWDEVICE file for $1
        vvx310
        ;;
vvx400) echo Deploying BWDEVICE file for $1
        vvx400
        ;;
vvx410) echo Deploying BWDEVICE file for $1
        vvx410
        ;;
vvx401) echo Deploying BWDEVICE file for $1
        vvx401
        ;;
vvx500) echo Deploying BWDEVICE file for $1
        vvx500
        ;;
vvx501) echo Deploying BWDEVICE file for $1
        vvx501
        ;;
vvx600) echo Deploying BWDEVICE file for $1
        vvx600
        ;;
vvx601) echo Deploying BWDEVICE file for $1
        vvx601
        ;;
vvx1500) echo Deploying BWDEVICE file for $1
        vvx1500
        ;;
trio8800) echo Deploying BWDEVICE file for $1
        trio8800
        ;;
all) echo Deploying ALL BWDEVICE files
        spip301
        spip320
        spip321
        spip330
        spip331
        spip335
        spip430
        spip450
        spip500
        spip501
        spip550
        spip560
        cspip560
        spip600
        spip601
        spip650
        spip670
        ssip4000
        ssip5000
        ssip6000
        ssip7000
        vvx101
        vvx201
        vvx300
        vvx301
        vvx300key
        vvx310
        vvx400
        vvx401
        vvx410
        vvx500
        vvx501
        vvx600
        vvx601
        vvx1500
        trio8800
        ;;
*) echo Please run program with a valid model. See Usage for details
        ;;
esac

