# Usar una imagen de Java
FROM openjdk:21-slim

# Crear un directorio de trabajo
WORKDIR /app

# Copiar el archivo JAR generado por Maven
COPY target/*.jar app.jar

# Exponer el puerto de la aplicación
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
