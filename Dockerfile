FROM goodrainapps/maven:jdk7-alpine

RUN mkdir /app

COPY . /app/

WORKDIR /app

EXPOSE 5000

RUN mvn -B --settings /app/settings.xml -DskipTests=true clean install

ENTRYPOINT ["/app/run.sh"]
