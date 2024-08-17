FROM centos:latest

LABEL maintainer="ajay1041999@gmail.com"

RUN yum install -y httpd

ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/

WORKDIR /var/www/html

RUN unzip loxury.zip

RUN cp -rvi loxury/* . && rm -rf loxury loxury.zip

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
