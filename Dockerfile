FROM ubuntu:14.04
RUN apt-get update && apt-get install -y \
python
python-pip
RUN pip install flask
COPY hello.py /tmp/hello.py
