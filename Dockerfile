FROM ubuntu:latest

USER root
RUN “echo “deb http://security.ubuntu.com/ubuntu bionic-security main” | tee -a /etc/apt/sources.list.d/ubuntu-latest.list”
# RUN apt-get install wget
RUN “curl -rO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add –“;
RUN “echo "deb https://artifacts.elastic.co/packages/oss-7.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-7.x.list”;
RUN "apt-get install apt-transport-https"
RUN "apt-get update && apt-get install logstash"
RUN "systemctl start logstash.service"
LABEL maintainer = "abhishek.ewb@gmail.com"
