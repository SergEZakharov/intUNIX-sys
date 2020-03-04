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
# Задание 6
# Задание 7