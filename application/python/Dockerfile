FROM python:3.6

MAINTAINER mlworks <adelmo.aguiar.filho@gmail.com>

RUN apt-get update

RUN apt-get install -y liblapack-dev libblas-dev gfortran

COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

COPY model.dill /opt/ml/model

COPY serve /usr/local/bin/serve

RUN chmod +x /usr/local/bin/serve

EXPOSE 8080