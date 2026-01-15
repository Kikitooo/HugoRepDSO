# Utilise une image base avec Java

FROM eclipse-temurin:17-jdk
 
# Définir le répertoire de travail dans le conteneur

WORKDIR /app
 
# Copier le fichier JAR généré dans le conteneur

COPY target/demo-github-0.0.1-SNAPSHOT.jar app.jar
 
# Exposer le port sur lequel Spring Boot écoute

EXPOSE 8080
 
# Commande pour lancer l'application Spring Boot

ENTRYPOINT ["java", "-jar", "app.jar"]

 
