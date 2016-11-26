bigrams = LOAD 'bigrams-ka.gz' AS (bigram:chararray, year:int, count:double, books:double);

grouped = GROUP bigrams BY bigram;
result = FOREACH grouped {
	sum_count = SUM(bigrams.count);
	sum_books = SUM(bigrams.books);
	GENERATE group as bigram, sum_count / sum_books as avr;
}
order_result = ORDER result BY avr DESC, bigram;

STORE order_result INTO 'bigrams-ka-results.gz' USING PigStorage('\t'); 
