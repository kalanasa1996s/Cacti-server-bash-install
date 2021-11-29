#!/bin/bash
RED="\e[41m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"

clear
if (whiptail --title "Cacti Server" --yesno "Do you want to continue yes/no " 8 78); then

echo -e  "${GREEN}

***************INSTALL RRD TOOL*************

${ENDCOLOR}"

apt-get update  -y
sudo apt-get install rrdtool

echo -e "${GREEN}

***************Install Web Server and Database Package**************

${ENDCOLOR}"

sudo apt-get install apache2 mysql-server php libapache2-mod-php -y

echo -e "${GREEN}

************* Snpm snmpd *************

${ENDCOLOR}"

sudo apt-get install cacti cacti-spine -y

echo -e  "

${RED}

-------------------------------------------------------------------------
************ Install Succeeded *************

 cacti username - admin ;
 password - Password that you entered;

 *******************************************
 Open your Browser and type your ip/cacti
 Ex - 192.168.1.31/cacti

web - sasankageek.tk | mail - kalana@sasankageek.tk
-------------------------------------------------------------------------


${ENDCOLOR}"

else
    echo "


 ______                
(____  \               
 ____)  )_   _ _____   
|  __  (| | | | ___ |  
| |__)  ) |_| | ____|  
|______/ \__  |_____)  
        (____/     


	"
fi
