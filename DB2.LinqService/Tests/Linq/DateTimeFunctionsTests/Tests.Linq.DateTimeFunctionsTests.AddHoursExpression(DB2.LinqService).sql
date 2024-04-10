BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 22

SELECT
	Extract(hour from ("t"."DateTimeValue" + CAST(@p AS Int) HOUR))
FROM
	"LinqDataTypes" "t"

