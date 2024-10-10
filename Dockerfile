FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean
COPY ./ /var/www/html/
EXPOSE 82
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
