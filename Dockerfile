# Use official Tomcat base image
FROM tomcat:9.0-jdk17-temurin

# Remove default webapps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file to Tomcat's webapps directory
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 for the app
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
