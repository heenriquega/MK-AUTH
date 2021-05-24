#!/bin/sh

cd /opt/mk-auth/admin/scripts
wget https://raw.githubusercontent.com/heenriquega/mk-auth/main/remove_brechas.sh
chmod a+x remove_brechas.sh
chmod 777 remove_brechas.sh
./remove_brechas.sh
rm -rf remove_brechas.sh

