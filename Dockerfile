FROM debian

RUN apt update && apt install apache2 -y && apt clean

ENV APACHE_RUN_USER="www-data"
ENV APACHE_RUN_GROUP="www-data"
ENV APACHE_LOG_DIR="/var/log/apache2"
ENV APACHE_PID_FILE="/var/run/apache2.pid"
ENV APACHE_LOCK_DIR="/var/lock"

ADD site.tar.gz /var/www/html

LABEL description="Meu querido site"

VOLUME /var/www/html

EXPOSE 80

ENTRYPOINT [ "/usr/sbin/apachectl" ]

CMD [ "-D", "FOREGROUND" ]