BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Value Integer(4) -- Int32
SET     @Value = 5

SELECT
	DATE("t"."DateTimeValue" + @Value DAY)
FROM
	"LinqDataTypes" "t"

