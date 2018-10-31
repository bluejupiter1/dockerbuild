FROM ubuntu:16.04
MAINTAINER Bluejupiter
LABEL purpose="Hands on LAB"
RUN apt-get update
RUN apt-get install apache2 -y
WORKDIR /var/www/html
RUN ["/bin/bash","-c","echo abcde >> test.html"]
EXPOSE 80
CMD ["apachectl","-DEFOREGROUND"]
