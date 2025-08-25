BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ID,
	t1."Value"
FROM
	testdb:Issue681Table t1

