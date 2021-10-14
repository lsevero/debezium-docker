from debezium/connect:1.7
LABEL maintainer "Lucas Severo <lvspais2@gmail.com>"

RUN \
    curl -fSL# -o /kafka/libs/failureaccess-1.0.jar https://repo1.maven.org/maven2/com/google/guava/failureaccess/1.0/failureaccess-1.0.jar && \
    curl -fSL# -o /kafka/libs/hadoop-client-3.3.0.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-client/3.3.0/hadoop-client-3.3.0.jar && \
    curl -fSL# -o /kafka/libs/guava-28.2-jre.jar https://repo1.maven.org/maven2/com/google/guava/guava/28.2-jre/guava-28.2-jre.jar
