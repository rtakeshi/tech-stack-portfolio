from pyspark.sql import SparkSession

if __name__ == "__main__":
    # Create a SparkSession
    spark = SparkSession.builder \
        .appName("HelloWorld") \
        .getOrCreate()

    # Create an RDD with a single value
    data = ["Hello, World!"]

    # Convert the RDD to a DataFrame
    df = spark.createDataFrame(data, ["message"])

    # Show the DataFrame contents
    df.show()

    # Stop the SparkSession
    spark.stop()