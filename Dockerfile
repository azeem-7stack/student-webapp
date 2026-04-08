# Use official Tomcat 9 image
FROM tomcat:9

# Optional: clean default apps to avoid conflicts
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to Tomcat's webapps folder
COPY target/student-webapp.war /usr/local/tomcat/webapps/

# Inform Docker that the container listens on 8080
EXPOSE 8080
