BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 3

SELECT
	DATE("t"."DateTimeValue" + CAST(@p AS Int) DAY)
FROM
	"LinqDataTypes" "t"

