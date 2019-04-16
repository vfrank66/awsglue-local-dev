object Main extends App {
  println("Hello, World!")


  val spark = SparkSession.builder
  .appName("Spark Pi")
  .master("spark://spark-master:7077")
  .config("spark.driver.port", "20002")
  .config("spark.driver.bindAddress", "0.0.0.0")
  .config("spark.blockManager.port", "6060")
  .config("spark.submit.deployMode", "client")
  .config("spark.deploy.defaultCores", "2") // set on master
  .config("spark.cores.max", "2") // set per app basis
  .config("spark.driver.cores", "2")
  .config("spark.driver.memory", "1GB")
  .config("spark.executor.memory", "512m")
  .getOrCreate()

  val glueContext: GlueContext = new GlueContext(spark.sparkContext)


  println(s"********* End example ***********")

  spark.stop()
}