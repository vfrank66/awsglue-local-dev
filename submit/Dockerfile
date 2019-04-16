FROM spark/spark-base:2.2.1-hadoop2.7

ENV SPARK_MASTER_NAME spark-master
ENV SPARK_MASTER_PORT 7077
ENV SPARK_APPLICATION_JAR_LOCATION /app/application.jar
ENV SPARK_EXTRA_JARS_LOCATION ""
ENV SPARK_APPLICATION_PYTHON_LOCATION /app/app.py
ENV SPARK_EXTRA_PYTHON_FILES_LOCATION ""
ENV SPARK_APPLICATION_MAIN_CLASS my.main.Application
ENV SPARK_APPLICATION_ARGS ""

COPY submit.sh /
RUN chmod +x /submit.sh

# default setup for AWS glue environment
RUN mkdir -p /app/lib 
COPY glue-assembly.jar /app/lib/glue-assembly.jar 
COPY PyGlue.zip /app/lib/PyGlue.zip

RUN chmod +x /app/lib/glue-assembly.jar && chmod +x /app/lib/PyGlue.zip

CMD ["/bin/bash", "/submit.sh"]
