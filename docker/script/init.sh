#!/bin/bash

# Создание БД
sleep 10
airflow upgradedb
sleep 10

#Создаем пользователя
airflow users create --username admin --password admin --firstname Alexey --lastname Kuznetsov --role Admin --email kuznetsovlearn@gmail.com

# Запуск шедулера и вебсервера
airflow scheduler & airflow webserver
