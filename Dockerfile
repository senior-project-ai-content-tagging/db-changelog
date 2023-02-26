FROM eclipse-temurin:17-alpine

WORKDIR /app
COPY ./db-changelog.jar .
COPY ./src/changelog /app/changelog

ENV CLASSPATH /app/
ENV CHANGELOG_PATH changelog/changelog-master.xml
ENV DB_URL jdbc:postgresql://db:5432/postgres 
ENV DB_USERNAME postgres
ENV DB_PASSWORD postgres
ENV spring_profiles_active prod


CMD ["java", "-jar", "./db-changelog.jar"]