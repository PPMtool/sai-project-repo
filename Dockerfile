FROM openjdk:8
COPY target/ppmtool-0.0.1-SNAPSHOT.jar  ppmtool-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT [ "java" , "-jar" , "ppmtool-0.0.1-SNAPSHOT.jar"]
