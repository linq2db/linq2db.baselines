-- Informix.DB2 Informix

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	testdb:Issue681Table
WHERE
	testdb:Issue681Table.ID = @ID

