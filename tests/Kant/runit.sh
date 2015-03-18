# Make sure hdfs, yarn, and spark have been started.

hadoop fs -rm -r /user/kant/CPR_WordCounts

/home/cluster/opt/spark/bin/spark-submit \
  --master yarn-client \
  /home/cluster/EZ-SparkOnHadoop/tests/Kant/kant_wc.py  \
  1000
