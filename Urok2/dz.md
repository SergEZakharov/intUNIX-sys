#!/bin/bash
echo "Urok2"

mkdir -p ~/GB/Urok2
cd ~/GB/Urok2

## вывести содержимое папок в файлы -
ls -la /etc >  ./file1
ls -la /proc >  ./file2
ls -la /home >  ./file3

## объеденить файлы -
cat file1 file2 file3 > file4

## переименовть файл -
mv file4 file5

## выбрать скрытые файлы
ls -la | grep " \.\S" | grep "^-" | wc

## выбрать из потока ошибок чтения файлов
## узнать сколько файлов не прочтены -
cat /etc/* 2> ~/GB/Urok2/err.txt
wc -l ~/GB/Urok2/err.txt

## подсчитать количество разрешений в домашнем каталоге, не учитывать
## слово 'итого'
ls -la ~ | cut -c 1-10 | sort -u | grep -v итого | wc -l

## прервать процесс -
## cd ~/GB/Urok2
## vi err.txt
## отправить сочетание клавиш Ctrl + C:
## kill SIGINT $(ps aux | grep "vi err.txt" | grep -v grep | cut -d ' ' -f 3)
## немедленно завершить процесс:
## kill $(ps aux | grep "vi err.txt" | grep -v grep | cut -d ' ' -f 3)

