if [ ! -f CritiqueOfPureReason.txt ]; then
   wget http://www.gutenberg.org/files/4280/4280.txt 
   mv 4280.txt CritiqueOfPureReason.txt
fi

hadoop fs -mkdir /user
hadoop fs -mkdir /user/kant

hdfs dfs -put CritiqueOfPureReason.txt /user/kant/

	


