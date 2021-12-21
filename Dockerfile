FROM ubuntu:latest

USER root
RUN “echo “deb http://security.ubuntu.com/ubuntu bionic-security main” | tee -a /etc/apt/sources.list.d/ubuntu-latest.list”
RUN apt-get install docker && docker version
RUN docker pull docker.elastic.co/logstash/logstash:7.16.2
#RUN “curl -O - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add –“;
RUN “echo "deb https://artifacts.elastic.co/packages/oss-7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list”;
RUN "apt-get install apt-transport-https"
# RUN "apt-get update "
RUN apt-get install logstash
RUN "systemctl start logstash.service"
LABEL maintainer = "abhishek.ewb@gmail.com"
