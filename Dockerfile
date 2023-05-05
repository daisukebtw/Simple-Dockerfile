FROM ubuntu:22.04

RUN apt-get -y update
RUN apt-get -y install apache2

RUN echo "This Docker container was launched by Terraform!" > /var/www/html/index.html


CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80