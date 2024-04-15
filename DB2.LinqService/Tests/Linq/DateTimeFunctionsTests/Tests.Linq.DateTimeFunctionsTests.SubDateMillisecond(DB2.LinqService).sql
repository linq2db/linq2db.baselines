BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	((Days("t"."DateTimeValue" + 2023456.7890000001 SECOND) - Days("t"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("t"."DateTimeValue" + 2023456.7890000001 SECOND) - MIDNIGHT_SECONDS("t"."DateTimeValue")) * 1000 + (MICROSECOND("t"."DateTimeValue" + 2023456.7890000001 SECOND) - MICROSECOND("t"."DateTimeValue")) / 1000
FROM
	"LinqDataTypes" "t"

