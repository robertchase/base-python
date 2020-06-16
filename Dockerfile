FROM python:3.8.3-slim

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    curl \
    telnet \
    vim

RUN pip install --upgrade pip \
    pytest \
    pylint \
    click
