# 1. Image de Base : Nécessaire pour exécuter votre application Java 17
FROM openjdk:17-jre-slim

# 2. Répertoire de Travail : Définit le dossier principal dans le conteneur
WORKDIR /app

# 3. Copie du Livrable (JAR)
# Le nom du JAR est extrait de votre pom.xml : student-management-0.0.1-SNAPSHOT.jar
# Remarque : Cette étape fonctionnera après que Maven ait généré le JAR dans le dossier 'target'.
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# 4. Exposition du Port : Indique que l'application écoute sur le port 8080
EXPOSE 8080

# 5. Point d'Entrée : La commande pour lancer l'application au démarrage du conteneur
ENTRYPOINT ["java", "-jar", "app.jar"]git add Dockerfile