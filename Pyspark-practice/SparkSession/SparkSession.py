from pyspark.sql import SparkSession
from pyspark import SparkContext

# Step 0: Stop any existing SparkContext to avoid conflict
try:
    if SparkContext._active_spark_context:
        # print("Stopping existing SparkContext...")
        SparkContext._active_spark_context.stop()
except Exception as e:
    print(f"Error stopping SparkContext: {e}")

# Step 1: Create new SparkSession
spark = SparkSession.builder \
    .appName("leetcode") \
    .master("local[*]") \
    .getOrCreate()
print("SparkSession created successfully.")
spark.sparkContext.setLogLevel("ERROR") # Set log level to ERROR to reduce verbosity