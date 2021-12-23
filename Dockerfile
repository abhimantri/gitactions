FROM ubuntu:latest

USER root
COPY ./logstash.sh /tmp/
RUN cd /tmp
RUN chmod 755 /tmp/logstash.sh

RUN /tmp/logstash.sh

