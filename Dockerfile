#
#     docker build -t cutom_image .
#
#     docker run -dit -p 804:80 cutom_image
#


FROM ubuntu:18.04

RUN apt-get -y update
RUN apt-get -y install apache2

COPY ./index.html /var/www/html
COPY ./style.css /var/www/html
COPY ./main.js /var/www/html

EXPOSE 80

CMD apache2ctl -D FOREGROUND