FROM ubuntu

RUN apt-get update && apt-get install -y apache2

COPY website/ /usr/local/apache2/htdocs

EXPOSE 80

<<<<<<< HEAD:Projects/Project4/Dockerfile
CMD ["apache2ctl", "-D", "FOREGROUND"]

=======
CMD ["apache2ctl", "-D", "FOREGROUND"]
>>>>>>> 3ccd6bc085a4128c03890d70f1847743322a2a32:Dockerfile
