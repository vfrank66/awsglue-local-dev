FROM spark/spark-submit:2.2.1-hadoop2.7

RUN mkdir -p /app
COPY examples/target/spark-examples_2.12-3.0.0-SNAPSHOT.jar /app/spark-examples.jar

ENV ENABLE_INIT_DAEMON false
ENV SPARK_MASTER_NAME spark-master
ENV SPARK_MASTER_PORT 7077
ENV SPARK_APPLICATION_JAR_LOCATION /app/spark-examples.jar
ENV SPARK_APPLICATION_MAIN_CLASS org.apache.spark.examples.SparkPi
ENV SPARK_APPLICATION_ARGS ""