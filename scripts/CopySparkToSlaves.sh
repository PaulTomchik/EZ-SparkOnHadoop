SPARK_DIR="spark-1.2.1-bin-hadoop2.4"
SPARK_TAR="spark.tar.gz"

SLAVE_CMD="\
cd /home/cluster/opt;\
tar zxvf ${SPARK_TAR};\
rm -f ${SPARK_TAR};\
ln -s /home/cluster/opt/${SPARK_DIR} spark;"

cd /home/cluster/opt

tar zcvf "${SPARK_TAR}" "${SPARK_DIR}" 

scp "${SPARK_TAR}" slave1:/home/cluster/opt
ssh slave1 "${SLAVE_CMD}"

scp "${SPARK_TAR}" slave2:/home/cluster/opt
ssh slave2 "${SLAVE_CMD}"

rm -f "${SPARK_TAR}"
