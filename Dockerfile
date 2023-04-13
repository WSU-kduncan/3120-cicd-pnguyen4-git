FROM ubuntu

RUN apt-get update && apt-get install -y apache2

COPY website/ /usr/local/apache2/htdocs/index.html

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
