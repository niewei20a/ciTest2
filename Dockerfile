FROM openjdk:8
ARG jar_name={jar_name:-springboot-test-0.0.1-SNAPSHOT.jar}
COPY ./target/springboot-test-0.0.1-SNAPSHOT.jar ./
EXPOSE 8081
CMD java -jar -Dserver.port=8081 springboot-test-0.0.1-SNAPSHOT.jar