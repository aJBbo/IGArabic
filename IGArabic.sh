#!/bin/sh

#  IGArabic.sh
#  
#
#  Created by aJBboCydia
#  

export PATH="/opt/homebrew/bin:$PATH"
rm -rf packages .theos
sshpass -p "alpine" ssh root@localhost -p 2222 rm -rf /var/mobile/theosTweaks/*.deb
make package
sshpass -p "alpine" scp -r -P 2222 packages/*.deb root@localhost:/var/mobile/theosTweaks
sshpass -p "alpine" ssh root@localhost -p 2222 dpkg -i /var/mobile/theosTweaks/*.deb
sshpass -p "alpine" ssh root@localhost -p 2222 killall Instagram





