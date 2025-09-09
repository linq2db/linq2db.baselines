BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Date Integer(4) -- Int32
SET     @Date = 5

SELECT
	DATE("t"."DateTimeValue" + @Date DAY)
FROM
	"LinqDataTypes" "t"

