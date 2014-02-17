# Apache HTTP Server
#
# VERSION 0.0.1

FROM ubuntu:13.04

MAINTAINER Tim Schindler

RUN apt-get update
RUN apt-get -y install apache2

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
