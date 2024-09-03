# Use the official Tomcat base image
FROM tomcat:10.1

# Maintainer information (optional)
LABEL maintainer="your-email@example.com"
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to the Tomcat webapps directory
# Make sure loginsystm.war is in the same directory as this Dockerfile
# Copy the correct WAR file to the Tomcat webapps directory
COPY loginsystem.war /usr/local/tomcat/webapps/loginsystem.war

# Expose port 8080 for the Tomcat server
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]

