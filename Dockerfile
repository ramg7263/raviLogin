FROM tomcat:8.5.37-jre8
LABEL maintainer="ravitechnologies.cloud@gmail.com"
RUN apt-get update
ADD https://rambucket4.s3.amazonaws.com/raviLogin-1.0.war /usr/local/tomcat/webapps/
WORKDIR /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]

