FROM eclipse-temurin:21-jre
WORKDIR /app
RUN groupadd --system spring && useradd --system --gid spring spring
COPY target/*.jar app.jar
USER spring
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]