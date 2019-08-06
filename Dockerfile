FROM centos

MAINTAINER suresh

RUN \
#install apache packages 
yum install httpd -y

RUN echo " Hello this is docker webpage " > /var/www/html/index.html

EXPOSE 80

CMD /usr/sbin/httpd -D FOREGROUND
