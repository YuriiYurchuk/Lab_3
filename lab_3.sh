#!/bin/bash

initials=$(whoami | tr -d [:digit:] | awk '{print toupper(substr($0, 1, 2))}')
initials_directory="$initials"
mkdir -p "$initials_directory"

for i in {1..3}; do
    subdir="Subdirectory_$i"
    mkdir -p "$initials_directory/$subdir"
    echo "Ім'я: Yuri" > "$initials_directory/$subdir/first_name.txt"
    echo "Прізвище: Yurchuk" > "$initials_directory/$subdir/last_name.txt"
    group="412"
    date_formatted=$(date +"%Y-%m-%d")
    echo "Номер групи: $group" > "$initials_directory/$subdir/info.txt"
    echo "Дата виконання завдання: $date_formatted" >> "$initials_directory/$subdir/info.txt"
    email="urthyk1234@gmail.com"
    echo "Електронна пошта: $email" > "$initials_directory/$subdir/email.txt"
done

echo "Створено каталог з ініціалами та дерево каталогів."

./email_check.sh
./apache_logs.sh
