FROM openjdk:17

EXPOSE 8080

ARG BUILD_NUMBER
ADD target/spring-petclinic-SNAPSHOT-2.6.0.jar spring-petclinic.jar

ENTRYPOINT ["java","-jar","spring-petclinic.jar"]
