FROM nvidia/cuda:11.7.1-cudnn8-runtime-ubuntu20.04

RUN apt-get update -y
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install libjpeg-dev zlib1g-dev git -y

RUN python3 -m pip install --upgrade pip setuptools wheel
RUN python3 -m pip install numpy==1.21.6 tensorflow==2.9.1 scikit-image==0.19.3 SimpleITK==2.1.1.2

WORKDIR /code
RUN cd /code

COPY ./ ./

COPY ./10064.mha /tmp/input.mha

