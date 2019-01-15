#!/bin/bash 


################################################################################
  @Author: jbryan jbryan@impulse.net
  @Date:   2016-03-28 10:17:31
  @File Name: lab-sha2bwdeploy.sh
  @Last modified by:   jbryan
  @Last Modified time: 2016-05-26 09:28:52
  @Created time: 2016-03-28 10:17:31
################################################################################


cd "/Users/jbryan/Dropbox/Cobra/Polycom/DMS/impulse/"
LABAS=labas1.impulsevoip.net
USE=${LABAS}



for sha2macfiles in %BWMACADDRESS%-settings.cfg 
do
	echo BEGIN ${sha2macfiles}
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2macfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*321/${sha2macfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2macfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*331/${sha2macfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2macfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*335/${sha2macfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2macfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*450/${sha2macfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2macfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*550/${sha2macfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2macfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*560/${sha2macfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2macfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*650/${sha2macfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2macfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*5000/${sha2macfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2macfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*6000/${sha2macfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2macfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*7000/${sha2macfiles}.template
	echo END ${sha2macfiles}

done



for sha2miscfiles in ssl.cfg ssl-setup.cfg
do
	echo BEGIN ${sha2miscfiles}
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2miscfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*321/${sha2miscfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2miscfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*331/${sha2miscfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2miscfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*335/${sha2miscfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2miscfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*450/${sha2miscfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2miscfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*550/${sha2miscfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2miscfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*560/${sha2miscfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2miscfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*650/${sha2miscfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2miscfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*5000/${sha2miscfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2miscfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*6000/${sha2miscfiles}.template
	scp -o "PreferredAuthentications=password" ../pieces/misc/sha2/${sha2miscfiles} bwadmin@${USE}:/var/broadworks/IpDeviceConfig/type/Polycom_*7000/${sha2miscfiles}.template
	echo END ${sha2miscfiles}

done

