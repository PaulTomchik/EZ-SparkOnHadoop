MASTER_IP='192.168.56.90'
sed "/# - SPARK_MASTER_IP.*$/a export SPARK_MASTER_IP='${MASTER_IP}'" /home/cluster/opt/spark/conf/spark-env.sh.template > /home/cluster/opt/spark/conf/spark-env.sh
chmod +x '/home/cluster/opt/spark/conf/spark-env.sh'


printf "master\nslave1\nslave2" >> /home/cluster/opt/spark/conf/slaves
