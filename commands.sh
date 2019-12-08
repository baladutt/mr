hadoop fs -mkdir /bdutt
hadoop fs -put sample.txt /bdutt
hadoop jar /opt/hadoop/share/hadoop/tools/lib/hadoop-streaming-3.1.1.jar -file mapper.py -file reducer.py -mapper "python mapper.py" -reducer "python reducer.py" -input /bdutt/sample.txt -output /bdutt/wordcount.txt
hadoop fs -get /bdutt/wordcount.txt
