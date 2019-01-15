#!/bin/bash


################################################################################
#  @Author: jbryan jbryan@impulse.net
#  @Date:   2016-05-26 09:29:53
#  @File Name: bwdevice.sh
#  @Last modified by:   jbryan
#  @Last Modified time: 2016-05-26 14:05:44
#  @Created time: 2016-05-26 09:29:53
################################################################################




cd "/Users/jbryan/Dropbox/Cobra/Polycom/DMS/pieces/"
dropbox="/Users/jbryan/Dropbox/Cobra/Polycom/DMS/impulse"



function config_copy() {
 fw_source_vers=$1
 fw_target_vers=$2

 #echo fw_source_vers is ${fw_source_vers}
 #echo fw_target_vers is ${fw_target_vers}
 #find . -maxdepth 1 -type f -name "*${fw_source_vers}*" -print  2>&1 | sed -e "s/${fw_source_vers}/${fw_target_vers}/"

 for config_src_files in `find . -maxdepth 1 -type f -name "*${fw_source_vers}*xml" -print 2>&1 `
 do
        config_tgt_files=`echo ${config_src_files} | sed -e "s/${fw_source_vers}/${fw_target_vers}/" `
        #echo config_src_files is ${config_src_files}
        #echo config_tgt_files is ${config_tgt_files}
        if [ -e ${config_tgt_files} ] ; then
                echo "ERROR: This file (${config_tgt_files}) already exists - maybe you should reconsider this action before really screwing it up, Jessie"
                #exit 217
        else
                echo cp -pf ${config_src_files} ${config_tgt_files}
        fi

 done


}

function sl8440() {

	APP="UC4.0.2B"
	MODEL="SL8440"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}

function spip301() {

	APP="3.1.8"
	MODEL="301"
	# 
	# Order Counts!
	#
	
	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}




function spip320() {

	APP="3.3.4"
	MODEL="320"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
		10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}




function spip321() {

	APP="UC4.0.10"
	MODEL="321"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}




function spip330() {

	APP="3.3.4"
	MODEL="330"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}




function spip331() {

	APP="UC4.0.10"
	MODEL="331"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}



function spip335() {

	APP="UC4.0.10"
	MODEL="335"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}



function spip430() {

	APP="3.2.7"
	MODEL="430"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}


function spip450() {

	APP="UC4.0.10"
	MODEL="450"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}


function spip500() {
#
# No longer supported
#

	APP="2.1.3"
	MODEL="500"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12-${APP}.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12.xml \
			 06-Alert-Info-${APP}.xml 07-NTP-${APP}.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan-${APP}.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			90-Keys-${MODEL}-${APP}.xml 97-Logging-${APP}.xml  99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}

function spip501() {

	APP="3.1.8"
	MODEL="501"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml  99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}

function spip550() {

	APP="UC4.0.10"
	MODEL="550"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml  99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}

function spip560() {

	APP="UC4.0.10"
	MODEL="560"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}

function spip600() {

	APP="3.1.8"
	MODEL="600"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}


function spip601() {

	APP="3.1.8"
	MODEL="601"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}


function spip650() {

	APP="UC4.0.10"
	MODEL="650"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}

function spip670() {

	APP="UC4.0.10"
	MODEL="670"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}

function ssip4000() {

	APP="3.1.8"
	MODEL="SSIP4000"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}

function ssip5000() {

	APP="UC4.0.10"
	MODEL="SSIP5000"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}


function ssip6000() {

	APP="UC4.0.10"
	MODEL="SSIP6000"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}



function ssip7000() {

	APP="UC4.0.10"
	MODEL="SSIP7000"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}


function vvx101() {

	APP="UC5.4.0AB"
	MODEL="VVX101"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 22-Bluetooth-${APP}-${MODEL}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
			27-acousticFencing-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			80-${MODEL}-Video.xml 81-${MODEL}-HotDialing.xml  90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}


function vvx201() {

	APP="UC5.4.0A"
	MODEL="VVX201"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 22-Bluetooth-${APP}-${MODEL}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
			27-acousticFencing-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			80-${MODEL}-Video.xml 81-${MODEL}-HotDialing.xml  90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}


function vvx300() {

	#APP="UC5.4.3"
	APPS="UC4.1.6 UC5.4.3"
	MODEL="VVX300"
	# 
	# Order Counts!
	#

	for APP in ${APPS}
	do
		rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

		for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
				02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
				 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
				10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
				 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
				 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
				20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 80-${MODEL}-Video.xml \
				23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
				27-acousticFencing-${APP}-${MODEL}.xml \
				30-requestValidation-${APP}-${MODEL}.xml \
				81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
				97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
		do
			if [ -e ${files} ] ; then
				cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
			else
				echo "${MODEL} v.${APP} is missing file ${files}"
			fi
		done
		ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		echo
	done

}

function vvx301() {

	#APP="UC5.4.3"
	APPS="UC5.4.3"
	MODEL="VVX301"
	# 
	# Order Counts!
	#

	for APP in ${APPS}
	do
		rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

		for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
				02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
				 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
				10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
				 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
				 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
				20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 80-${MODEL}-Video.xml \
				23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
				27-acousticFencing-${APP}-${MODEL}.xml \
				30-requestValidation-${APP}-${MODEL}.xml \
				81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
				97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
		do
			if [ -e ${files} ] ; then
				cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
			else
				echo "${MODEL} v.${APP} is missing file ${files}"
			fi
		done
		ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		echo
	done

}

function vvx300key() {

	APP="UC4.1.7"
	MODEL="VVX300KEY"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-${APP}-${MODEL}.xml \
			02-BLF-${APP}-${MODEL}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}-${MODEL}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}-${MODEL}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 15-Push-to-Talk-${APP}.xml 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 80-${MODEL}-Video.xml \
			23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
			27-acousticFencing-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}

function vvx310() {

	#APP="UC5.4.3"
	APPS="UC4.1.6 UC5.4.3"
	MODEL="VVX310"
	# 
	# Order Counts!
	#

	for APP in ${APPS}
	do
		rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

		for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
				02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
				 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
				10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
				 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
				 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
				20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 80-${MODEL}-Video.xml \
				23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
				27-acousticFencing-${APP}-${MODEL}.xml \
				30-requestValidation-${APP}-${MODEL}.xml \
				81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
				97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
		do
			if [ -e ${files} ] ; then
				cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
			else
				echo "${MODEL} v.${APP} is missing file ${files}"
			fi
		done
		ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		echo
	done
}


function vvx400() {

	#APP="UC5.4.3"
	APPS="UC4.1.6 UC5.4.3"
	MODEL="VVX400"
	# 
	# Order Counts!
	#

	for APP in ${APPS}
	do
		rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

		for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
				02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
				 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
				10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
				 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
				 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
				20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 80-${MODEL}-Video.xml \
				23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
				27-acousticFencing-${APP}-${MODEL}.xml \
				30-requestValidation-${APP}-${MODEL}.xml \
				81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
				97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
		do
			if [ -e ${files} ] ; then
				cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
			else
				echo "${MODEL} v.${APP} is missing file ${files}"
			fi
		done
		ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		echo
	done
}


function vvx401() {

	#APP="UC5.4.3"
	APPS="UC5.4.3"
	MODEL="VVX401"
	# 
	# Order Counts!
	#

	for APP in ${APPS}
	do
		rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

		for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
				02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
				 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
				10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
				 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
				 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
				20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 80-${MODEL}-Video.xml \
				23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
				27-acousticFencing-${APP}-${MODEL}.xml \
				30-requestValidation-${APP}-${MODEL}.xml \
				81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
				97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
		do
			if [ -e ${files} ] ; then
				cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
			else
				echo "${MODEL} v.${APP} is missing file ${files}"
			fi
		done
		ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		echo
	done
}

function vvx410() {

	#APP="UC5.4.3"
	APPS="UC4.1.6 UC5.4.3"
	MODEL="VVX410"
	# 
	# Order Counts!
	#

	for APP in ${APPS}
	do
		rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

		for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
				02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
				 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
				10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
				 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
				 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
				20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 80-${MODEL}-Video.xml \
				23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
				27-acousticFencing-${APP}-${MODEL}.xml \
				30-requestValidation-${APP}-${MODEL}.xml \
				81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
				97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
		do
			if [ -e ${files} ] ; then
				cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
			else
				echo "${MODEL} v.${APP} is missing file ${files}"
			fi
		done
		ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		echo
	done

}



function vvx500() {

	#APP="UC5.4.3"
	APPS="UC4.1.6 UC5.4.3"
	MODEL="VVX500"
	# 
	# Order Counts!
	#

	for APP in ${APPS}
	do
		rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

		for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
				02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
				 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
				10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
				 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
				 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
				20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 80-${MODEL}-Video.xml \
				23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
				27-acousticFencing-${APP}-${MODEL}.xml \
				30-requestValidation-${APP}-${MODEL}.xml \
				81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
				97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
		do
			if [ -e ${files} ] ; then
				cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
			else
				echo "${MODEL} v.${APP} is missing file ${files}"
			fi
		done
		ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		echo
	done

}


function vvx501() {

	#APP="UC5.4.3"
	APPS="UC5.4.3"
	MODEL="VVX501"
	# 
	# Order Counts!
	#

	for APP in ${APPS}
	do
		rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

		for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
				02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
				 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
				10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
				 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
				 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
				20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 80-${MODEL}-Video.xml \
				23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
				27-acousticFencing-${APP}-${MODEL}.xml \
				30-requestValidation-${APP}-${MODEL}.xml \
				81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
				97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
		do
			if [ -e ${files} ] ; then
				cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
			else
				echo "${MODEL} v.${APP} is missing file ${files}"
			fi
		done
		ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		echo
	done

}

function vvx600() {

	#APP="UC5.4.3"
	APPS="UC4.1.6 UC5.4.3"
	MODEL="VVX600"
	# 
	# Order Counts!
	#

	for APP in ${APPS}
	do
		rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

		for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
				02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
				 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
				10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
				 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
				 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
				20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 22-Bluetooth-${APP}-${MODEL}.xml \
				23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
				27-acousticFencing-${APP}-${MODEL}.xml \
				30-requestValidation-${APP}-${MODEL}.xml \
				80-${MODEL}-Video.xml 81-${MODEL}-HotDialing.xml  90-Keys-${MODEL}-${APP}.xml \
				97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
		do
			if [ -e ${files} ] ; then
				cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
			else
				echo "${MODEL} v.${APP} is missing file ${files}"
			fi
		done
		ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		echo
	done

}

function vvx601() {

	#APP="UC5.4.3"
	APPS="UC5.4.3"
	MODEL="VVX601"
	# 
	# Order Counts!
	#

	for APP in ${APPS}
	do
		rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

		for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
				02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
				 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
				10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
				 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
				 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
				20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 22-Bluetooth-${APP}-${MODEL}.xml \
				23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
				27-acousticFencing-${APP}-${MODEL}.xml \
				30-requestValidation-${APP}-${MODEL}.xml \
				80-${MODEL}-Video.xml 81-${MODEL}-HotDialing.xml  90-Keys-${MODEL}-${APP}.xml \
				97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
		do
			if [ -e ${files} ] ; then
				cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
			else
				echo "${MODEL} v.${APP} is missing file ${files}"
			fi
		done
		ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		echo
	done

}


function vvx1500() {

	APP="UC4.0.4"
	MODEL="VVX1500"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-12.xml \
			02-BLF-${APP}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			80-${MODEL}-Video.xml 81-${MODEL}-HotDialing.xml 90-Keys-${MODEL}-${APP}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}

function trio8800() {

	APP="UC5.4.2AB"
	MODEL="TRIO8800"
	# 
	# Order Counts!
	#

	rm -f ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg

	for files in ${APP}-header.xml 00-GlobalSIP.xml 01-RegisterLines-1-${MODEL}.xml \
			02-BLF-${APP}-${MODEL}.xml 03-NWay-${APP}-${MODEL}.xml 04-ACD-${APP}.xml 05-MWI-1-12-${APP}-${MODEL}.xml \
			 06-Alert-Info-${APP}.xml 07-NTP.xml 09-UP-Preferences-${APP}.xml \
			10-${MODEL}-Logo.xml 10-${MODEL}-RingTone.xml 11-DialPlan.xml 12-FeaturesGeneric-${APP}.xml \
			 13-Hoteling-${APP}.xml 14-ProvisionPolling-${APP}-${MODEL}.xml 15-Paging-${APP}.xml \
			 16-Webserver.xml 17-QoS-${APP}.xml 18-checkSync-${APP}.xml 19-DNS-CACHE-${APP}.xml \
			20-CodecPref-${APP}.xml 21-SupplmentalSignaling-${APP}.xml 22-Bluetooth-${APP}-${MODEL}.xml \
			23-Microbrowser-${APP}-${MODEL}.xml 24-BroadSoftDIR-${APP}-${MODEL}.xml \
			27-acousticFencing-${APP}-${MODEL}.xml \
			30-requestValidation-${APP}-${MODEL}.xml \
			79-${APP}-${MODEL}.xml 80-${MODEL}-Video.xml 81-${MODEL}-HotDialing.xml  90-Keys-${MODEL}-${APP}.xml \
			93-VisualPlus-${APP}-${MODEL}.xml \
			97-Logging-${APP}.xml 99-TheEnd-${APP}.xml
	do
		if [ -e ${files} ] ; then
			cat ${files} >> ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
		else
			echo "${MODEL} v.${APP} is missing file ${files}"
		fi
	done
	ls -al ${dropbox}/${MODEL}-${APP}-BWDEVICE.cfg
	echo

}
#
# Main
#

if [ $# -lt 1 ]
then
        echo "Usage : $0 (301|320|321|330|331|335|430|450|500|501|550|560|600|601|650|670|ssip4000|ssip5000|ssip6000|ssip7000|vvx101|vvx201|vvx300|vvx301|vvx310|vvx400|vvx401|vvx410|vvx500|vvx501|vvx600|vvx601|vvx1500|vvx300key|sl8440|trio8800)"
        exit
fi

case "$1" in

config) echo Copying Config Files from $2 to $3
        config_copy $2 $3
        ;;
301) echo Generating BWDEVICE file for $1
	spip301
	;;
320) echo Generating BWDEVICE file for $1
	spip320
	;;
321) echo Generating BWDEVICE file for $1
	spip321
	;;
330) echo Generating BWDEVICE file for $1
	spip330
	;;
331) echo Generating BWDEVICE file for $1
	spip331
	;;
335) echo Generating BWDEVICE file for $1
	spip335
	;;
430) echo Generating BWDEVICE file for $1
	spip430
	;;
450) echo Generating BWDEVICE file for $1
	spip450
	;;
500) echo Generating BWDEVICE file for $1
	spip500
	;;
501) echo Generating BWDEVICE file for $1
	spip501
	;;
550) echo Generating BWDEVICE file for $1
	spip550
	;;
560) echo Generating BWDEVICE file for $1
	spip560
	;;
600) echo Generating BWDEVICE file for $1
	spip600
	;;
601) echo Generating BWDEVICE file for $1
	spip601
	;;
650) echo Generating BWDEVICE file for $1
	spip650
	;;
670) echo Generating BWDEVICE file for $1
	spip670
	;;
ssip4000) echo Generating BWDEVICE file for $1
	ssip4000
	;;
ssip5000) echo Generating BWDEVICE file for $1
	ssip5000
	;;
ssip6000) echo Generating BWDEVICE file for $1
	ssip6000
	;;
ssip7000) echo Generating BWDEVICE file for $1
	ssip7000
	;;
vvx101) echo Generating BWDEVICE file for $1
	vvx101
	;;
vvx201) echo Generating BWDEVICE file for $1
	vvx201
	;;
vvx300) echo Generating BWDEVICE file for $1
	vvx300
	;;
vvx301) echo Generating BWDEVICE file for $1
	vvx301
	;;
vvx300key) echo Generating BWDEVICE file for $1
	vvx300key
	;;
vvx310) echo Generating BWDEVICE file for $1
	vvx310
	;;
vvx400) echo Generating BWDEVICE file for $1
	vvx400
	;;
vvx401) echo Generating BWDEVICE file for $1
	vvx401
	;;
vvx410) echo Generating BWDEVICE file for $1
	vvx410
	;;
vvx500) echo Generating BWDEVICE file for $1
	vvx500
	;;
vvx501) echo Generating BWDEVICE file for $1
	vvx501
	;;
vvx600) echo Generating BWDEVICE file for $1
	vvx600
	;;
vvx601) echo Generating BWDEVICE file for $1
	vvx601
	;;
vvx1500) echo Generating BWDEVICE file for $1
	vvx1500
	;;
sl8440) echo Generating BWDEVICE file for $1
	sl8440
	;;
trio8800) echo Generating BWDEVICE file for $1
	trio8800
	;;
vvx) echo Generating BWDEVICE files for all vvx models
	vvx300
	vvx301
	vvx310
	vvx400
	vvx401
	vvx410
	vvx500
	vvx600
	;;
all) echo Removing and Generating ALL BWDEVICE files
	rm ${dropbox}/*.cfg > /dev/null 2&>1
	# spip301
	# spip320
	spip321
	# spip330
	spip331
	spip335
	# spip430
	spip450
	# spip500
	# spip501
	spip550
	spip560
	# spip600
	# spip601
	spip650
	spip670
	# ssip4000
	ssip5000
	ssip6000
	ssip7000
	vvx300
	vvx310
	vvx400
	vvx410
	vvx500
	vvx600
	# vvx1500
	# sl8440
	trio8800
	;;
*) echo Please run program with a valid model. See Usage for details
	;;
esac

