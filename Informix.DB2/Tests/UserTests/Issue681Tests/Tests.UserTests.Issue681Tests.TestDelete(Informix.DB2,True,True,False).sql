-- Informix.DB2 Informix

SELECT
	DBSERVERNAME
FROM table(set{1})

-- Informix.DB2 Informix

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	testdb@informix:Issue681Table
WHERE
	testdb@informix:Issue681Table.ID = @ID

