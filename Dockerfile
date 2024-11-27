FROM  ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY  index.html /var/www/html
RUN useradd http 
RUN chown -R http:http /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
