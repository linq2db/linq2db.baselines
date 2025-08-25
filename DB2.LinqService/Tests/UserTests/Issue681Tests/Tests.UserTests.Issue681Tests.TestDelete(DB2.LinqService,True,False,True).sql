BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	current schema
FROM
	"LinqDataTypes" "t1"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	DB2INST1."Issue681Table" "t1"
WHERE
	"t1".ID = @ID

