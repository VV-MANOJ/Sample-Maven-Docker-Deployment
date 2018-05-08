FROM tomcat 
MAINTAINER Manojv vardhinenimanoj4@gmail.com
COPY ./target/samplemaven.war /usr/local/tomcat/webapps/
