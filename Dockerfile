FROM ubuntu:14.10
MAINTAINER gijs@pythonic.nl
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:staticfloat/juliareleases
RUN apt-get update
RUN apt-get install -y julia python3-pip libzmq-dev
RUN pip3 install ipython jinja2 pyzmq tornado
RUN julia --eval 'Pkg.add("IJulia")'

VOLUME /notebooks
EXPOSE 8888
CMD ipython notebook --profile julia --ip=* --notebook-dir=/notebooks --port 8888

