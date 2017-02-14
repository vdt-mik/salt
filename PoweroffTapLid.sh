!#/bin/bash
#Бекапим файл конфига
cp /etc/systemd/logind.conf /etc/systemd/logind.conf.bak
#Включаем выключение при закрытии крышки
sed -e 's/#HandleLidSwitch=suspend/HandleLidSwitch=poweroff/g' /etc/systemd/logind.conf
#Перезапускаем службу
systemctl restart systemd-logind.service