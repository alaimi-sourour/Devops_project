# Image de base OpenJDK 17
FROM eclipse-temurin:17-jdk

# Répertoire de travail
WORKDIR /app

# Copier le jar compilé
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Commande pour démarrer l'application
ENTRYPOINT ["java","-jar","app.jar"]
