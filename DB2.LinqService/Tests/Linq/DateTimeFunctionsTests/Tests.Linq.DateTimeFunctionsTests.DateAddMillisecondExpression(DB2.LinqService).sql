BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @p Integer(4) -- Int32
SET     @p = 226

SELECT
	"t"."DateTimeValue" + (@p * 1000) MICROSECONDS
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"

