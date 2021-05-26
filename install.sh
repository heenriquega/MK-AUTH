#!/bin/sh
clear
cron1="0 3,15 * * * /opt/mk-auth/admin/scripts/new_version.sh"
cron2="0 0 1 * * /opt/mk-auth/admin/scripts/limpa_logs.sh"
ip="$(ip -4 addr show eth0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')"

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
echo "                         \033[01;32mALTERANDO CAMINHO DO SISTEMA\033[01;37m"
echo ""
sleep 3
cd /opt/mk-auth/include
sed -i '3,6s/admin/sistema/' configure.php
sleep 1
cd /etc/apache2/conf-enabled/
sed -i '3d' webadmin.conf
sleep 1
sed -i '3s/^/Alias \/sistema \/opt\/mk-auth\/admin\/\n /' webadmin.conf
service apache2 restart
clear
echo "\033[05;31m                        __   ___   _  ___  ____ _____ "
echo "                        \ \ / / | | |/ _ \/ ___|_   _| "
echo "                         \ V /| |_| | | | \___ \ | | "
echo "                          | | |  _  | |_| /___) || | "
echo "                          |_| |_| |_|\___/|____/ |_| \033[00;37m"
echo ""
echo ""
echo "                                  FINALIZADO!"
echo "                  AGORA PARA ACESSAR SEU SISTEMA USE /SISTEMA"
echo "                    EU ACESSO FICOU \033[01;32m$ip/sistema\033[01;37m!"
echo ""
echo "                    RECOMENDAMOS QUE REINICIE SEU SERVIDOR"
echo "                        DESEJA REINICIAR SEU SERVIDOR ?"
echo ""
echo "                            DIGITE \033[01;32m1\033[01;37m PARA REINICIA"
echo "                            DIGITE \033[01;32m2\033[01;37m PARA SAIR"
echo ""
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
sleep 3
mk-auth
;;
esac
