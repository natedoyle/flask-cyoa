# Dockerfile for flask choose your own adventure development project

FROM ubuntu:14.04
MAINTAINER Nate Doyle
RUN apt-get -yqq update
RUN apt-get install -yqq python 
RUN apt-get -yqq install python-pip
RUN pip install selenium
RUN pip install flask
RUN pip install mongopy
RUN pip install pytest

COPY . /src
WORKDIR /src

EXPOSE 5000

CMD python app.py