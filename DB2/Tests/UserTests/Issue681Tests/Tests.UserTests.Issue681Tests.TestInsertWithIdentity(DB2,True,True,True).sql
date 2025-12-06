-- DB2 DB2.LUW DB2LUW

SELECT
	current server
FROM
	"LinqDataTypes" "t1"
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

SELECT
	current schema
FROM
	"LinqDataTypes" "t1"
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

SELECT
	ID
FROM
	NEW TABLE
	(
		INSERT INTO TESTDB.DB2INST1."Issue681Table4"
		(
			"Value"
		)
		VALUES
		(
			@Value
		)
	)

