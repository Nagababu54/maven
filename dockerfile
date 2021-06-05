FROM nginx
COPY ./webapp.war /var/www/html/
EXPOSE 80
