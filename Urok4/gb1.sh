#!/bin/bash

if [ -n "$1" ]
  then
	cd /bin
	sed -i '/^[[:space:]]*$/d' $1 # /tmp/gb1.txt
    sed -i 's/.*/\U&/' $1 # /tmp/gb1.txt
    cat $1 #/tmp/gb1.txt
  else
	echo "Укажите обрабатываемый файл "
fi
#

# в поток - удаление пустых строк
# sed '/^[[:space:]]*$/d' /tmp/gb1.txt

# sed -r '/^\s*$/d'

# верхний регистр
# sed -i 's/.*/\U&/'
# -i - edit files in place

# нижний регистр
# sed -i 's/.*/\L&/'
# sed -i '/^[[:space:]]*$/d' /tmp/gb1.txt  
# sed -i 's/.*/\U&/' /tmp/gb1.txt
# cat /tmp/gb1.txt

