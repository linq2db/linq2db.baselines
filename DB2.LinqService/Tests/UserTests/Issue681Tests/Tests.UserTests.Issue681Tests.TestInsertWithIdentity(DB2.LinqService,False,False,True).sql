BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	current schema
FROM
	"LinqDataTypes" "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

SELECT
	ID
FROM
	NEW TABLE
	(
		INSERT INTO DB2INST1."Issue681Table4"
		(
			"Value"
		)
		VALUES
		(
			@Value
		)
	)

