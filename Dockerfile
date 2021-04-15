FROM ubuntu
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk wget
RUN wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.65/bin/apache-tomcat-8.5.65.tar.gz
RUN tar -zxvf apache-tomcat-8.5.65.tar.gz
COPY integration/target/flipkart-1.0-SNAPSHOT.jar  apache-tomcat-8.5.65/webapps
EXPOSE 8080
ENTRYPOINT "apache-tomcat-8.5.65/bin/startup.sh" run && bash
