BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 41

SELECT
	Extract(second from ("t"."DateTimeValue" + CAST(@p AS Int) SECOND))
FROM
	"LinqDataTypes" "t"

