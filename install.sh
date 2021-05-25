#!/bin/sh
clear
cron1="0 3,15 * * * /opt/mk-auth/admin/scripts/new_version.sh"
cron2="0 0 1 * * /opt/mk-auth/admin/scripts/limpa_logs.sh"

echo "\033[05;31m                        __   ___   _  ___  ____ _____ "
echo "                        \ \ / / | | |/ _ \/ ___|_   _| "
echo "                         \ V /| |_| | | | \___ \ | | "
echo "                          | | |  _  | |_| /___) || | "
echo "                          |_| |_| |_|\___/|____/ |_| \033[00;37m"
echo ""
echo ""
echo "                       \033[01;32mFAZENDO O DOWNLOAD DOS ARQUIVOS\033[01;37m"
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
echo "\033[05;31m                        __   ___   _  ___  ____ _____ "
echo "                        \ \ / / | | |/ _ \/ ___|_   _| "
echo "                         \ V /| |_| | | | \___ \ | | "
echo "                          | | |  _  | |_| /___) || | "
echo "                          |_| |_| |_|\___/|____/ |_| \033[00;37m"
echo ""
echo ""
echo "                             \033[01;32mDOWNLOADS CONCLUIDOS\033[01;37m"
echo ""
sleep 2
clear
echo "\033[05;31m                        __   ___   _  ___  ____ _____ "
echo "                        \ \ / / | | |/ _ \/ ___|_   _| "
echo "                         \ V /| |_| | | | \___ \ | | "
echo "                          | | |  _  | |_| /___) || | "
echo "                          |_| |_| |_|\___/|____/ |_| \033[00;37m"
echo ""
echo ""
echo "                         \033[01;32mGENDANDO CRON DOS ARQUIVOS\033[01;37m"
echo ""
sleep 3
(crontab -r)
(crontab -l ; echo "$cron1")| crontab -
(crontab -l ; echo "$cron2")| crontab -
clear
echo "\033[05;31m                        __   ___   _  ___  ____ _____ "
echo "                        \ \ / / | | |/ _ \/ ___|_   _| "
echo "                         \ V /| |_| | | | \___ \ | | "
echo "                          | | |  _  | |_| /___) || | "
echo "                          |_| |_| |_|\___/|____/ |_| \033[00;37m"
echo ""
echo ""
echo "                                  FINALIZADO!"
echo "                    RECOMENDAMOS QUE REINICIE SEU SERVIDOR"
echo "                        DESEJA REINICIAR SEU SERVIDOR ?"
echo "                            DIGITE \033[01;32m1\033[01;37m PARA REINICIA E "
echo "                               DESEJA \033[01;32m2\033[01;37m PARA SAIR"
echo "                        DIGITE A OPÇÃO E APERTE \033[01;32mENTER\033[01;37m"
echo ""
read n
case $n in
  1) 
clear
echo "\033[05;31m                        __   ___   _  ___  ____ _____ "
echo "                        \ \ / / | | |/ _ \/ ___|_   _| "
echo "                         \ V /| |_| | | | \___ \ | | "
echo "                          | | |  _  | |_| /___) || | "
echo "                          |_| |_| |_|\___/|____/ |_| \033[00;37m"
echo ""
echo ""
echo "                         VAMOS REINICIAR SEU SISTEMA!"
echo "                        \033[01;32mYHOST\033[01;37m AGRADECE A PREFERENCIA!!"
reboot -n
;;
  2)
clear
echo "\033[05;31m                        __   ___   _  ___  ____ _____ "
echo "                        \ \ / / | | |/ _ \/ ___|_   _| "
echo "                         \ V /| |_| | | | \___ \ | | "
echo "                          | | |  _  | |_| /___) || | "
echo "                          |_| |_| |_|\___/|____/ |_| \033[00;37m"
echo ""
echo ""
echo "                        \033[01;32mYHOST\033[01;37m AGRADECE A PREFERENCIA!!"
;;
esac
sleep 3
clear
