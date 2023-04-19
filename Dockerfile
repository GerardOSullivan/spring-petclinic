FROM openjdk:17
EXPOSE 8080

RUN rm -f spring-petclinic-2.6.0-SNAPSHOT.jar
ADD target/spring-petclinic-2.6.0-SNAPSHOT.jar spring-petclinic-2.6.0-SNAPSHOT.jar

ADD deploy.sh /deploy.sh
RUN chmod +x /deploy.sh

ENTRYPOINT ["java","-jar","/spring-petclinic-2.6.0-SNAPSHOT.jar"]
