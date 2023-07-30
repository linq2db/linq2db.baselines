BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 11

SELECT
	"t"."DateTimeValue" + @p Year
FROM
	"LinqDataTypes" "t"

