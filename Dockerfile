FROM eclipse-temurin:24-jre

COPY HelloWorld.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]