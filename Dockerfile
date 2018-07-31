FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip
RUN apt-get clean all

RUN pip install flask

COPY hello.py /tmp/hello.py

EXPOSE 5000
CMD ["python","/tmp/hello.py"]
