BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = -35

SELECT
	"t"."DateTimeValue" + @p Second
FROM
	"LinqDataTypes" "t"

