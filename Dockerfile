# Image de base Java 17 (match GitHub Actions)
FROM eclipse-temurin:17-jdk

# Répertoire de travail
WORKDIR /app

# Copie TOUS les JAR de target et renomme en app.jar
COPY target/*.jar app.jar

# Expose port Spring Boot
EXPOSE 8080

# Lance l'app (nom fixe = app.jar)
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
