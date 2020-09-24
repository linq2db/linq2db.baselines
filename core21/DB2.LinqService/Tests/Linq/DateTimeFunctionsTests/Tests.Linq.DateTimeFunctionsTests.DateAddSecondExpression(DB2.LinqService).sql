BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 41

SELECT
	"t"."DateTimeValue" + @p1 Second
FROM
	"LinqDataTypes" "t"

