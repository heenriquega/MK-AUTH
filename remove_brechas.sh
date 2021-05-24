mv /opt/mk-auth/retorno/lndex.php /opt/mk-auth/retorno/index.php
rm -rf /opt/mk-auth/retorno/[1234567890]*.php
rm -rf /opt/mk-auth/libs/dompdf/[1234567890]*.php
rm -rf /opt/mk-auth/libs/dompdf/dom.php
rm -rf /opt/mk-auth/admin/terminal.php
mv /opt/mk-auth/include/template.cIass.php /opt/mk-auth/include/template.class.php
rm -rf /opt/mk-auth/central/webcam
rm -rf /opt/mk-auth/speedtest/phpinfo53.php
cat /dev/null > /opt/mk-auth/admin/sped/index.php
cat /dev/null > /opt/mk-auth/admin/addons/index.php
cat /dev/null > /opt/mk-auth/admin/sis_layout/index.php
cat /dev/null > /opt/mk-auth/libs/dompdf/index.php
rm -rf /opt/mk-auth/admin/scripts/mk-auth.php
cd /opt/mk-auth/chat
rm -rf phpinfo53.php
rm -rf phpinfo54.php
wget https://raw.githubusercontent.com/heenriquega/mk-auth/main/phpinfo53.php
wget https://raw.githubusercontent.com/heenriquega/mk-auth/main/phpinfo54.php
service apache2 restart

