#!/bin/bash
clear
    echo $'\n' 1>> /var/log/usersused.log
    date 1>> /var/log/usersused.log
	IFC=$'\n' # разделитель перевод строки
    for entry in $(cat /etc/passwd) # цикл по всем строкам passwd
    do
       ctlg=$(echo "$entry"|cut -d ':' -f6) # столбец домашний каталог
       allusers=$(echo "$entry"|cut -d ':' -f1) # столбец пользователь
       
       #echo "$entry" # отладка
       #echo $ctlg # отладка
       #echo $allusers # отладка
       str=$(du -h -s $ctlg)>1 # значение занимаего места каталогом
       # set -x # включить отладку (построчный вывод)
       echo $allusers" "$str 1>> /var/log/usersused.log
       # запись
       # set +x # отключить отладку
    done
 