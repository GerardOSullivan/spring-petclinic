FROM openjdk:17

EXPOSE 8080

ARG BUILD_NUMBER
ADD target/spring-petclinic-${BUILD_NUMBER}.jar spring-petclinic.jar

ENTRYPOINT ["java","-jar","spring-petclinic.jar"]
