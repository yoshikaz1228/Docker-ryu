FROM ubuntu:16.04
RUN apt-get update && apt-get install -y wget
RUN apt-get install -y net-tools
RUN apt-get install -y curl unzip zip 
RUN apt-get install -y default-jre 
RUN apt-get install -y default-jdk
RUN apt-get install -y openjdk-8-jre
RUN export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64 
RUN apt-get install -y software-properties-common
RUN apt-get install -y git  sudo mininet
RUN mn --version


RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip python-dev libxml2-dev libxslt-dev zlib1g-dev
RUN pip install -U pip
RUN python --version
RUN pip install -U ryu && \
pip uninstall -y tinyrpc && \
pip install tinyrpc==0.8 && \
ryu-manager --version

RUN wget http://www.bouncycastle.org/download/bcprov-jdk15to18-166.jar && \
ls /usr/lib/jvm/ && \
cp bcprov-jdk15to18-166.jar /usr/lib/jvm/java-8-openjdk-amd64/jre/lib/ext


#RUN wget https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/opendaylight/0.13.0/opendaylight-0.13.0.zip && \
#unzip opendaylight-0.13.0.zip && \
#cd opendaylight-0.13.0 && \
#./bin/karaf && \
#feature:install odl-restconf odl-l2switch-switch odl-mdsal-apidocs odl-dlux-core

RUN pip install --user openpyxl


