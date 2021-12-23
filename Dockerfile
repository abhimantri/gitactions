FROM ubuntu:20.04

USER root
RUN apt update && apt upgrade -y
RUN apt-get install curl -y
RUN apt-get install wget -y
#RUN echo “deb http://security.ubuntu.com/ubuntu bionic-security main” | tee -a /etc/apt/sources.list.d/ubuntu-latest.list
#RUN apt-get install docker*
#RUN docker pull docker.elastic.co/logstash/logstash:7.15.2
RUN wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add
RUN echo "deb https://artifacts.elastic.co/packages/oss-7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list”;
RUN apt-get install apt-transport-https -y
RUN apt-get update && apt-get install logstash -y 
RUN systemctl start logstash.service
LABEL maintainer = "abhishek.ewb@gmail.com"
