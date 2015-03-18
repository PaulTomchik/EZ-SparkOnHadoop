SPARK_VERSION='spark-1.2.1'
HADOOP_VERSION='hadoop2.4'
SPARK_BINARY="${SPARK_VERSION}-bin-${HADOOP_VERSION}"
SPARK_TAR="${SPARK_BINARY}.tgz"


mkdir -p /home/cluster/opt
cd /home/cluster/opt

wget "http://apache.spinellicreations.com/spark/${SPARK_VERSION}/${SPARK_TAR}"

tar zxvf "${SPARK_TAR}"
rm -f "${SPARK_TAR}" 

ln -s "/home/cluster/opt/${SPARK_BINARY}" 'spark'
