# Usa imagem leve do Java 11
FROM openjdk:17-jdk-slim

# Cria um diretório de trabalho dentro do container
WORKDIR /app

# Copia o .jar gerado para dentro do container
COPY target/apicrud-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta 8080 para acesso externo
EXPOSE 8080

# Comando que roda a aplicação
CMD ["java", "-jar", "app.jar"]
