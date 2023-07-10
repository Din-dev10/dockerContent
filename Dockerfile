FROM ubuntu:18.04

RUN apt update

RUN apt install -y apache2

COPY . /app

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
