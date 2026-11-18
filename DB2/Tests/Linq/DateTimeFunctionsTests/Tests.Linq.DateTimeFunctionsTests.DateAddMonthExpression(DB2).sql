-- DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 2

SELECT
	DATE("t"."DateTimeValue" + @Value MONTH)
FROM
	"LinqDataTypes" "t"

