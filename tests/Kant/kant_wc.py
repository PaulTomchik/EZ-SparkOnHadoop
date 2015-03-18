import sys
from operator import add
from pyspark import SparkContext

sc = SparkContext(appName="KantWordCount")

file = sc.textFile("hdfs://master/user/kant/CritiqueOfPureReason.txt")

counts = file.flatMap(lambda line: line.split(" ")) \
             .map(lambda word: (word.encode('utf-8'), 1)) \
             .reduceByKey(lambda a, b: a + b)

counts.saveAsTextFile("hdfs://master/user/kant/CPR_WordCounts") 
