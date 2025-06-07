BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 1

SELECT
	DATE("t"."DateTimeValue" + @Value DAY)
FROM
	"LinqDataTypes" "t"

