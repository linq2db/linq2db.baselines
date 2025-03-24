BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 226

SELECT
	"t"."DateTimeValue" + (CAST(@p AS Int) * 1000) MICROSECONDS
FROM
	"LinqDataTypes" "t"

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"

