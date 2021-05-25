#!/bin/sh
clear
cron1="0 3,15 * * * /opt/mk-auth/admin/scripts/new_version.sh"
cron2="0 0 1 * * /opt/mk-auth/admin/scripts/limpa_logs.sh"

echo "                        __   ___   _  ___  ____ _____ "
echo "                        \ \ / / | | |/ _ \/ ___|_   _| "
echo "                         \ V /| |_| | | | \___ \ | | "
echo "                          | | |  _  | |_| /___) || | "
echo "                          |_| |_| |_|\___/|____/ |_| "
echo ""
echo ""
echo "                       FAZENDO O DOWNLOAD DOS ARQUIVOS"
cd /opt/mk-auth/admin/scripts
rm -rf new_version.sh
rm -rf limpa_logs.sh
wget -q --show-progress https://raw.githubusercontent.com/heenriquega/mk-auth/main/new_version.sh
chmod a+x new_version.sh
chmod 777 new_version.sh
wget -q --show-progress https://github.com/heenriquega/mk-auth/raw/main/limpa_logs.sh
chmod a+x limpa_logs.sh
chmod 777 limpa_logs.sh
clear
echo "                        __   ___   _  ___  ____ _____ "
echo "                        \ \ / / | | |/ _ \/ ___|_   _| "
echo "                         \ V /| |_| | | | \___ \ | | "
echo "                          | | |  _  | |_| /___) || | "
echo "                          |_| |_| |_|\___/|____/ |_| "
echo ""
echo ""
echo "                             DOWNLOADS CONCLUIDOS"
echo ""
sleep 2
clear
echo "                        __   ___   _  ___  ____ _____ "
echo "                        \ \ / / | | |/ _ \/ ___|_   _| "
echo "                         \ V /| |_| | | | \___ \ | | "
echo "                          | | |  _  | |_| /___) || | "
echo "                          |_| |_| |_|\___/|____/ |_| "
echo ""
echo ""
echo "                         GENDANDO CRON DOS ARQUIVOS"
echo ""
sleep 3
(crontab -r)
(crontab -l ; echo "$cron1")| crontab -
(crontab -l ; echo "$cron2")| crontab -
clear
echo "                        __   ___   _  ___  ____ _____ "
echo "                        \ \ / / | | |/ _ \/ ___|_   _| "
echo "                         \ V /| |_| | | | \___ \ | | "
echo "                          | | |  _  | |_| /___) || | "
echo "                          |_| |_| |_|\___/|____/ |_| "
echo ""
echo ""
echo "                         FINALIZANDO POR FAVOR AGUARDE"
echo ""
sleep 3
clear
