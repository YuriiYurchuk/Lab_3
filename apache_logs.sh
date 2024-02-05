#!/bin/bash

apache_logs_path="/c/Laboratorni_AKM_i_S/Laboratorna_#3/Apache_2.4-PHP_5.5-5.6_queriesa.log"
if [ -f "$apache_logs_path" ]; then
    count_404=$(grep -c " 404 " "$apache_logs_path")
    echo "Кількість повідомлень про помилку 404: $count_404"
    echo "Повідомлення про помилку 404:"
    grep " 404 " "$apache_logs_path"
else
    echo "Файл логів Apache не знайдено."
fi
