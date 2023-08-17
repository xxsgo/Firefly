FROM nvidia/cuda:11.8.0-devel-ubuntu20.04

COPY . /Firefly/

WORKDIR /Firefly

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone
RUN apt-get update -y && apt-get install python3 python3-pip curl libgl1 libglib2.0-0 -y  && apt-get clean
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && python3 get-pip.py 
