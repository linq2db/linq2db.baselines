BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	(Days("t"."DateTimeValue" + 100 MINUTE) - Days("t"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("t"."DateTimeValue" + 100 MINUTE) - MIDNIGHT_SECONDS("t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

