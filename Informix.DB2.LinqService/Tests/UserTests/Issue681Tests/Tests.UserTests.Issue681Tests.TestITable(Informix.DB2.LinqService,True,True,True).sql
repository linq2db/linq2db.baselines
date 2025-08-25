BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	DBSERVERNAME
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	user
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.ID,
	t1."Value"
FROM
	testdb@informix:informix.Issue681Table t1

