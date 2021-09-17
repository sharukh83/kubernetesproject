FROM centos:latest
MAINTAINER ss9866257@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page271/video-catalog.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip beauty.zip
RUN cp -rvf templatemo_519_beauty/* .
RUN rm -rf templatemo_519_beauty beauty.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80 
