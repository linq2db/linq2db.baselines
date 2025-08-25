BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"g_1".ID,
	COUNT(*),
	SUM(((Days("g_1"."DateTimeValue" + 1 DAY) - Days("g_1"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("g_1"."DateTimeValue" + 1 DAY) - MIDNIGHT_SECONDS("g_1"."DateTimeValue")) * 1000 + (MICROSECOND("g_1"."DateTimeValue" + 1 DAY) - MICROSECOND("g_1"."DateTimeValue")) / 1000),
	MAX(((Days("g_1"."DateTimeValue" + 1 DAY) - Days("g_1"."DateTimeValue")) * 86400 + MIDNIGHT_SECONDS("g_1"."DateTimeValue" + 1 DAY) - MIDNIGHT_SECONDS("g_1"."DateTimeValue")) * 1000 + (MICROSECOND("g_1"."DateTimeValue" + 1 DAY) - MICROSECOND("g_1"."DateTimeValue")) / 1000)
FROM
	"LinqDataTypes" "g_1"
GROUP BY
	"g_1".ID

