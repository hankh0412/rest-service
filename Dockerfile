# Start with a base image containing Java runtime
FROM adoptopenjdk/openjdk11

# Add Author info
#LABEL maintainer="f.softwareengineer@gmail.com"

# Add a volume to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=build/libs/rest-service-0.1.jar

# Add the application's jar to the container
ADD ${JAR_FILE} rest-service-0.1.jar

# Run the jar file
ENTRYPOINT ["java","-jar","/rest-service-0.1.jar"]
