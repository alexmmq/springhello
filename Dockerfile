# Последняя версия джавы из Docker Hub
FROM eclipse-temurin

# Ставим свою подпись
LABEL authors="alexmmqb"

# Создаем локальную переменную, ссылка на компилированную версию проекта
ARG JAR_FILE=target/*.jar

# Копируем скомпилированный архив в образ и присваиваем название app.jar
COPY ${JAR_FILE} app.jar

# Указываем какой порт слушать
EXPOSE 8080

# Процесс запуска программы
ENTRYPOINT ["java", "-jar", "/app.jar"]