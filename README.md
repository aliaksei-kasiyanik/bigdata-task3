# bigdata-task3: Bigrams

Для выполнения задания был использован Apache Pig и Cloudera VM.

Данные: http://storage.googleapis.com/books/ngrams/books/googlebooks-eng-all-2gram-20120701-ka.gz

## Инструкция

* Загрузить файл с данными в HDFS: 

  hadoop fs -copyFromLocal bigrams-ka.gz
  
* Выполнить скрипт bigrams.pig в mapreduce режиме (по умолчанию):

  pig bigrams.pig
  
* Выгрузить с HDFS результат:

  hadoop fs -copyToLocal bigrams-ka-results.gz

## Результат

10 биграмм с наибольшим средним появлением в файле result-top-10.txt.
  
