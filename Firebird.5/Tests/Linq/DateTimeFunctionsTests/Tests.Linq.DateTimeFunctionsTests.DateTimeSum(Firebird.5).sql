-- Firebird.5 Firebird4

SELECT
	"g_1".ID,
	COUNT(*),
	SUM(DATEDIFF(millisecond, "g_1"."DateTimeValue", DateAdd(Day, 1, "g_1"."DateTimeValue"))),
	MAX(DATEDIFF(millisecond, "g_1"."DateTimeValue", DateAdd(Day, 1, "g_1"."DateTimeValue")))
FROM
	"LinqDataTypes" "g_1"
GROUP BY
	"g_1".ID

