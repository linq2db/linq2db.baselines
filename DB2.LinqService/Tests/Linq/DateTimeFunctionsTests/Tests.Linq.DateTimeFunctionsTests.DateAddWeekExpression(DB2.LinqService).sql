BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Value Integer(4) -- Int32
SET     @Value = -1

SELECT
	DATE("t"."DateTimeValue" + (@Value * 7) DAY)
FROM
	"LinqDataTypes" "t"

