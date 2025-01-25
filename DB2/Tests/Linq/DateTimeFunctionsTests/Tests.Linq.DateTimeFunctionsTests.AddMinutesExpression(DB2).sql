BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = -8

SELECT
	Extract(minute from ("t"."DateTimeValue" + CAST(@p AS Int) MINUTE))
FROM
	"LinqDataTypes" "t"

