#Set up a Virtual Cluster With Spark & Hadoop.

The end result of these instructions will be an 3-node vitual cluster with Spark and Hadoop.
###Note: These instructions, and associated scripts, are subject to change.

##Instructions
1. Create an *HadoopCluster* per the instructions in [EZ-Hadoop](https://github.com/PaulTomchik/EZ-Hadoop)

2. Start all three nodes.

3. Log into HadoopMaster and run:
  1. `git clone https://github.com/PaulTomchik/EZ-SparkOnHadoop.git`
  2. `cd EZ-SparkOnHadoop`
  3. `./InstallAndConfigureSpark.sh`

### At this point, Spark should be set up to run atop Hadoop!
I recommend taking snap shots of the VMs at this point.

# Have fun!
