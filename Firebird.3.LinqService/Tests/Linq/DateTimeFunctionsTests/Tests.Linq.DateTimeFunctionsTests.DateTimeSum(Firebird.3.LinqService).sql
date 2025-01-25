BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"g_1".ID,
	COUNT(*),
	SUM(DateDiff(millisecond, "g_1"."DateTimeValue", DateAdd(Day, 1, "g_1"."DateTimeValue"))),
	MAX(DateDiff(millisecond, "g_1"."DateTimeValue", DateAdd(Day, 1, "g_1"."DateTimeValue")))
FROM
	"LinqDataTypes" "g_1"
GROUP BY
	"g_1".ID

