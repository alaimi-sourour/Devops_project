# 1. Image de Base : Java 17 (image valide sur Docker Hub)
FROM openjdk:17-jdk-slim

# 2. Répertoire de Travail
WORKDIR /app

# 3. Copier le jar généré par Maven
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# 4. Exposer le port 8080
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
