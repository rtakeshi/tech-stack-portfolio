# Use a base image with Apache Spark pre-installed
FROM bitnami/spark:latest

# Set the working directory inside the container
WORKDIR /app

# Copy your PySpark application and any supporting files to the container
COPY main/test/test.py /app

# Set the necessary environment variables for PySpark
ENV PYSPARK_PYTHON=python3
ENV SPARK_HOME=/opt/bitnami/spark
ENV PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-*.zip:$PYTHONPATH


# Command to start your PySpark application (modify as needed)
CMD ["spark-submit", "--master", "local[*]", "test.py"]