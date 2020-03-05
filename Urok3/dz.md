#!/bin/bash

echo "Urok3 - это не скрипт"

# Задание 1
# создать и открыть файл для внесения информации
  cat > ~/file1 <<EOF
# file 1
# EOF

# скопировать файл
  cp file1 file2

# символическая ссылка
  ln -s ~/file1 ~/file3

# жёсткая ссылка
  ln ~/file1 ~/file4

# посмотреть i-node-ы
  ls -ila file*

# удалить file1 ==>
  rm file1
  ls -ila file*
# 794193 -rw-r--r-- 1 pur-pur pur-pur  6 мар  4 19:25 file2
# 794198 lrwxrwxrwx 1 pur-pur pur-pur 19 мар  4 19:35 file3 -> /home/pur-pur/file1
# 787443 -rw-r--r-- 1 pur-pur pur-pur  6 мар  4 19:21 file4
  cat file3
# cat: file3: Нет такого файла или каталога
  cat file4
# <==

# Задание 2
# ---
# создать файл
  touch file1

# переименовать
  mv file1 f1
  mv file4 f4

# жёсткая ссылка  
  ln f1 f44
  mkdir ~/dir1
  # копирование
  cp -L ~/f44 ~/dir1/f44

# символическая ссылка
  ln -s f1 f55
  ls -ila f*
#  798055 -rw-r--r-- 2 pur-pur pur-pur  0 мар  4 21:00 f1
#  787443 -rw-r--r-- 1 pur-pur pur-pur  6 мар  4 19:21 f4
#  798055 -rw-r--r-- 2 pur-pur pur-pur  0 мар  4 21:00 f44
#  799698 lrwxrwxrwx 1 pur-pur pur-pur  2 мар  4 21:11 f55 -> f1
#  794193 -rw-r--r-- 1 pur-pur pur-pur  6 мар  4 19:25 file2
#  794198 lrwxrwxrwx 1 pur-pur pur-pur 19 мар  4 19:35 file3 -> /home/pur-pur/file1
  # копирование
  cp ~/f55 ~/dir1/f55


# Задание 3
  # создать файлы
  cd ~
  touch fl1
  touch fl2
  ls -l | grep 'fl'
  # чтение и запись владельцу и группе, для всех - чтение
  sudo chmod ug+rw,o+r fl1
  ls -l | grep 'fl'
  sudo chmod 664 fl1
  ls -l | grep 'fl'
  # чтение и запись - владелец
  sudo chmod u=rw,go-rw fl2
  ls -l | grep 'fl'
  sudo chmod 600 fl2
  ls -l | grep 'fl'



# Задание 4
  sudo useradd -m -G sudo -s /bin/bash ivanov
  sudo passwd ivanov
  su - ivanov
  # и для проверки прав ...
  sudo visudo

  sudo groupadd admin
  sudo useradd -m -G admin -s /bin/bash petrov
  sudo passwd petrov
  sudo visudo
  # добавляем
  # %admin ALL=(ALL:ALL) ALL
  # ^O && ^X
  su - petrov
  # и для проверки прав ...
  sudo visudo


# Задание 5
sudo groupadd developer
sudo useradd -m -g developer -s /bin/bash user1 && sudo passwd user1
sudo useradd -m -g developer -s /bin/bash user2 && sudo passwd user2
sudo useradd -m -g developer -s /bin/bash user3 && sudo passwd user3

cd /
sudo mkdir dir-developer
sudo chown -R root:developer /dir-developer
sudo chmod 775 /dir-developer
sudo chmod 664 -R /dir-developer/*

sudo setfacl -m g:developer:rwx dir-developer
sudo setfacl -d -m u::rwx,g::rwx,o::-,g:developer:rwx dir-developer
getfacl /dir-developer





# Задание 6
cd /
sudo mkdir /dir-developer/share
sudo chown -R root:developer /dir-developer/share
sudo setfacl -m g:developer:r-x share
sudo setfacl -d -m u::rwx,g::r-x,o::-,g:developer:r-x share


# Задание 7
cd ~
mkdir hdir
sudo chmod 330 hdir
cd hdir
touch 1
ls -l
# ls: невозможно открыть каталог '.': Отказано в доступе
cat 1
