FROM openjdk:17
EXPOSE 8080
ADD target/spring-petclinic-2.6.0-SNAPSHOT.jar spring-petclinic-2.6.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/spring-petclinic-2.6.0-SNAPSHOT.jar"]
