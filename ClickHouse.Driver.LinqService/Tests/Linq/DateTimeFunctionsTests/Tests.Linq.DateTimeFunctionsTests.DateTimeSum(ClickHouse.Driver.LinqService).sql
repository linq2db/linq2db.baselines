BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	g_1.ID,
	COUNT(*),
	sumOrNull(toUnixTimestamp64Milli(toDateTime64(addDays(g_1.DateTimeValue, toFloat64(1)), 3)) - toUnixTimestamp64Milli(toDateTime64(g_1.DateTimeValue, 3))),
	maxOrNull(toUnixTimestamp64Milli(toDateTime64(addDays(g_1.DateTimeValue, toFloat64(1)), 3)) - toUnixTimestamp64Milli(toDateTime64(g_1.DateTimeValue, 3)))
FROM
	LinqDataTypes g_1
GROUP BY
	g_1.ID

