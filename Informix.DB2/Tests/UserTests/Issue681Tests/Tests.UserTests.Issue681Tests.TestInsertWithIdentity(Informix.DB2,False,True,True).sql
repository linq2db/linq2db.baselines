-- Informix.DB2 Informix

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

-- Informix.DB2 Informix

SELECT FIRST 1
	user
FROM
	LinqDataTypes t1

-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

INSERT INTO testdb:informix.Issue681Table4
(
	"Value"
)
VALUES
(
	@Value
)

-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

