-- DB2 DB2.LUW DB2LUW
SELECT
	CAST(CAST((BIGINT(DAYS(("t"."DateTimeValue" + 100 MINUTE)) - DAYS("t"."DateTimeValue")) * 86400 + (MIDNIGHT_SECONDS(("t"."DateTimeValue" + 100 MINUTE)) - MIDNIGHT_SECONDS("t"."DateTimeValue"))) * 10000000 + (MICROSECOND(("t"."DateTimeValue" + 100 MINUTE)) - MICROSECOND("t"."DateTimeValue")) * 10 AS BigInt) AS Float) / 600000000
FROM
	"LinqDataTypes" "t"

