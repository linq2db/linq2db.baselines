BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	((Days("t"."DateTimeValue" + 100 Hour) - Days("t"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("t"."DateTimeValue" + 100 Hour) - MIDNIGHT_SECONDS("t"."DateTimeValue")) / 86400
FROM
	"LinqDataTypes" "t"

