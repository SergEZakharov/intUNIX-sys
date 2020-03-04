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
# Задание 3
# Задание 4
# Задание 5
# Задание 6
# Задание 7