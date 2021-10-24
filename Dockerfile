from debezium/connect:1.7
LABEL maintainer "Lucas Severo <lvspais2@gmail.com>"

RUN \
    cat /proc/version  && \
    curl -fSL# -o /kafka/connect/confluentinc-kafka-connect-s3-10.0.3.tar.gz https://github.com/lsevero/debezium-docker/raw/main/confluentinc-kafka-connect-s3-10.0.3.tar.gz && \
    pushd /kafka/connect && \
    tar -xzf confluentinc-kafka-connect-s3-10.0.3.tar.gz && \
    popd && \
    curl -fSL# -o /kafka/libs/failureaccess-1.0.jar https://repo1.maven.org/maven2/com/google/guava/failureaccess/1.0/failureaccess-1.0.jar && \
    curl -fSL# -o /kafka/libs/hadoop-client-3.3.0.jar https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-client/3.3.0/hadoop-client-3.3.0.jar && \
    curl -fSL# -o /kafka/libs/guava-28.2-jre.jar https://repo1.maven.org/maven2/com/google/guava/guava/28.2-jre/guava-28.2-jre.jar && \
    curl -fSL# -o /kafka/libs/debezium-connector-postgres-1.7.0.Final.jar https://repo1.maven.org/maven2/io/debezium/debezium-connector-postgres/1.7.0.Final/debezium-connector-postgres-1.7.0.Final.jar
    
