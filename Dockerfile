FROM tomcat:8.0-jre8

COPY jnuget-0.8.2-SNAPSHOT.war /usr/local/tomcat/webapps/jnuget-0.8.2-SNAPSHOT.war
COPY jnuget.config.xml /var/lib/jnuget/jnuget.config.xml
COPY jnuget.users.xml /var/lib/jnuget/jnuget.users.xml

RUN mkdir -p /var/lib/jnuget/Packages

ENV NUGET_HOME /var/lib/jnuget

EXPOSE 8080

VOLUME ["/var/lib/jnuget","/usr/local/tomcat/logs","/usr/local/tomcat/conf"]
