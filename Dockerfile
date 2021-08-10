FROM    python:3.10.0b4-buster
LABEL   maintainer="Louis Ross <louis.ross@gmail.com"

ARG     MYDIR=/home/spiking-model-persist
WORKDIR ${MYDIR}

COPY    install-deps ${MYDIR}/

#COPY requirements.txt requirements.txt 
#RUN pip install -r requirements.txt

#RUN     echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
RUN     bash ${MYDIR}/install-deps ${MYDIR} >>install-deps.log
CMD     ["bash"]
