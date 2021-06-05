FROM nginx
COPY /var/lib/jenkins/workspace/docker-build/webapp/target/webapp.war /var/www/html/
EXPOSE 80
