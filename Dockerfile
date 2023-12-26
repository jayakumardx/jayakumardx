FROM tomcat:8.5.47-jdk8-openjdk

MAINTAINER Jayakumar "jayakumardx@gmail.com"

EXPOSE 8080

RUN rm -rf ./webapps/*

COPY fleetman-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

ENV JAVA_OPTS="-Dspring.profiles.active=docker-demo"

CMD ["catalina.sh", "run"]