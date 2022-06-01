FROM python:3.7

# Airflow глобальные переменные
ARG AIRFLOW_VERSION=1.10.14 # В прошлых работах мы использовали 2.0 версию, но на этом уроке поработаем с предыдущей версией
ARG AIRFLOW_USER_HOME=/usr/local/airflow
ENV AIRFLOW_HOME=${AIRFLOW_USER_HOME}

# Сборка airflow
RUN pip install apache-airflow[postgres]==${AIRFLOW_VERSION}
RUN pip install SQLAlchemy==1.3.23
RUN pip install flask-bcrypt
RUN pip install markupsafe==2.0.1
RUN pip install wtforms==2.3.3

# Создаем директрию для скриптов
RUN mkdir /project

# Копируем скрипты и конфиг файл
COPY script/ /project/scripts/
COPY config/airflow.cfg ${AIRFLOW_HOME}/airflow.cfg
COPY dags/ ${AIRFLOW_HOME}/dags/

# Доступы для скрипта
RUN chmod +x /project/scripts/init.sh

# Запускаем sh скрипт
ENTRYPOINT ["/project/scripts/init.sh"]
