BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	((Days("t"."DateTimeValue" + 1 Second) - Days("t"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("t"."DateTimeValue" + 1 Second) - MIDNIGHT_SECONDS("t"."DateTimeValue")) * 1000 + (MICROSECOND("t"."DateTimeValue" + 1 Second) - MICROSECOND("t"."DateTimeValue")) / 1000
FROM
	"LinqDataTypes" "t"

