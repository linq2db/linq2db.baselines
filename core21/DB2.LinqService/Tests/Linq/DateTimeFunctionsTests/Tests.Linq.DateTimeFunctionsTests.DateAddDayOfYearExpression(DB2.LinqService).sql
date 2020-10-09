BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 3

SELECT 
	"t"."DateTimeValue" + @p1 Day
FROM
	"LinqDataTypes" "t"

