FROM openjdk:17

EXPOSE 8080

ARG BUILD_NUMBER
CMD echo ${BUILD_NUMBER}
ADD target/spring-petclinic-2.6.0-SNAPSHOT.jar spring-petclinic-${BUILD_NUMBER}.jar
CMD echo "This is the build : ${BUILD_NUMBER}"
RUN echo "#!/bin/bash \n java -jar /spring-petclinic-${BUILD_NUMBER}.jar" > ./entrypoint.sh
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
