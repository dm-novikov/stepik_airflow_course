FROM python:3.7 

ARG AIRFLOW_VERSION=1.10.14
ARG AIRFLOW_USER_HOME=/usr/local/airflow
ENV AIRFLOW_HOME=${AIRFLOW_USER_HOME}

RUN pip install flask-bcrypt
RUN pip install apache-airflow[postgres]==${AIRFLOW_VERSION}
RUN pip install SQLAlchemy==1.3.23

RUN mkdir /project

COPY script/ /project/scripts/
COPY config/airflow.cfg ${AIRFLOW_HOME}/airflow.cfg

RUN chmod +x /project/scripts/init.sh

# Запускаем sh скрипт
ENTRYPOINT ["/project/scripts/init.sh"]
