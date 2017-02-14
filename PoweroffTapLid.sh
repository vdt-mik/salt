#!/bin/bash
#Бекапим файл конфига
sudo cp /etc/systemd/logind.conf /etc/systemd/logind.conf.bak
#Включаем выключение при закрытии крышки
sudo sed -i 's/#HandleLidSwitch=suspend/HandleLidSwitch=poweroff/' /etc/systemd/logind.conf
#Перезапускаем службу
sudo systemctl restart systemd-logind.service