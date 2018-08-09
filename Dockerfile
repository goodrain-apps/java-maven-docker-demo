FROM goodrainapps/maven:jdk7-alpine

RUN mkdir /app

COPY . /app/

WORKDIR /app

EXPOSE 5000

RUN mvn -B -DskipTests=true clean install sonar:sonar   -Dsonar.host.url=http://172.16.210.205:20045 -Dsonar.login=beddf820b03aad77bdff4426b18c220025d47b84

ENTRYPOINT ["/app/run.sh"]
