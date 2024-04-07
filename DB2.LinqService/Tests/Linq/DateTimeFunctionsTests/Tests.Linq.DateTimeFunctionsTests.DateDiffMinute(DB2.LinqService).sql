BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	((Days("t"."DateTimeValue" + 100 Minute) - Days("t"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("t"."DateTimeValue" + 100 Minute) - MIDNIGHT_SECONDS("t"."DateTimeValue")) / 60
FROM
	"LinqDataTypes" "t"

