BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 226

SELECT 
	"t"."DateTimeValue" + (@p1 * 1000) Microsecond
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"

