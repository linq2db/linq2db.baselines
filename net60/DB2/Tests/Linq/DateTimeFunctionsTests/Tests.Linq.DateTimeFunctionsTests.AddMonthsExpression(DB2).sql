BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = -2

SELECT
	"t"."DateTimeValue" + @p_1 Month
FROM
	"LinqDataTypes" "t"

