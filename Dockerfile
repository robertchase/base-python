FROM python:3.7-slim

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    curl \
    telnet \
    vim

RUN pip install \
    pytest \
    pytest-asyncio \
    flake8
