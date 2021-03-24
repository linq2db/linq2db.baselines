BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p_1 Double(8)
SET     @p_1 = 11

SELECT
	"t"."DateTimeValue" + @p_1 Year
FROM
	"LinqDataTypes" "t"

