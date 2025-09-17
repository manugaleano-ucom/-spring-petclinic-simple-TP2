# Usa una imagen base con un entorno de Java 17, que es ligero y seguro.
FROM openjdk:17-jdk-slim

# Define el directorio de trabajo dentro del contenedor.
WORKDIR /app

# Copia el archivo .jar de tu proyecto a este directorio.
# Recuerda que ya lo generaste con el comando 'mvnw package'.
# 'app.jar' es un nombre genérico, el original es más largo.
COPY target/*.jar app.jar

# Expone el puerto 8080.
# Es el puerto por defecto de las aplicaciones Spring Boot.
EXPOSE 8080

# Comando para iniciar la aplicación cuando el contenedor se ejecute.
ENTRYPOINT ["java", "-jar", "app.jar"]
