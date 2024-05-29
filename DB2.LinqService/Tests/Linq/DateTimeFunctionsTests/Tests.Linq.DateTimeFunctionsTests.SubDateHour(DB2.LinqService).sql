BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	((Days("t"."DateTimeValue" + 100 HOUR) - Days("t"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("t"."DateTimeValue" + 100 HOUR) - MIDNIGHT_SECONDS("t"."DateTimeValue")) / 3600
FROM
	"LinqDataTypes" "t"

