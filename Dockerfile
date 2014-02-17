# Apache HTTP Server
#
# VERSION 0.0.1

FROM ubuntu:13.04

MAINTAINER Tim Schindler

RUN apt-get update
RUN apt-get -y install apache2
RUN a2enmod authnz_ldap
RUN a2dissite default
RUN a2enmod proxy_http

ADD ./registry-auth /etc/apache2/sites-available/registry-auth
RUN a2ensite registry-auth

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
