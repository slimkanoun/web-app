# Utiliser l'image officielle Tomcat comme base
# Use an official Tomcat 9 image with JRE 17
FROM tomcat:9-jre17

# Copy the WAR file into the webapps directory of the Tomcat server
# The application will be accessible at http://localhost:8080/my-app/
COPY target/CalculWeb.war /usr/local/tomcat/webapps/CalculWeb.war

# Expose the default Tomcat port
EXPOSE 8080

# The default command of the base image starts Tomcat
CMD ["catalina.sh", "run"]
