Задание 1:
выполнить скрипт gb1.sh (https://github.com/SergEZakharov/intUNIX-sys/blob/master/Urok4/gb1.sh)
-=-

Задание 2:
выполнить скрипт gb3.sh (https://github.com/SergEZakharov/intUNIX-sys/blob/master/Urok4/gb3.sh)
-=-


Задание 3
 Добавить в /bin  скрипт gb2.sh (https://github.com/SergEZakharov/intUNIX-sys/blob/master/Urok4/gb2.sh)
 Настроить cron:
  sudo crontab -e
  добавить строку: @daily /bin/gb2.sh
после выполнения просматривать файл cat /var/log/usersused.log
-=-