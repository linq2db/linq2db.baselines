BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	g_2.ID,
	g_2.COUNT_1,
	g_2.SUM_1,
	CASE
		WHEN g_2.SUM_1 IS NOT NULL THEN true
		ELSE false
	END,
	g_2.MAX_1
FROM
	(
		SELECT
			g_1.ID as ID,
			COUNT(*) as COUNT_1,
			sumOrNull(toUnixTimestamp64Milli(toDateTime64(addDays(g_1.DateTimeValue, toFloat64(1)), 3)) - toUnixTimestamp64Milli(toDateTime64(g_1.DateTimeValue, 3))) as SUM_1,
			maxOrNull(toUnixTimestamp64Milli(toDateTime64(addDays(g_1.DateTimeValue, toFloat64(1)), 3)) - toUnixTimestamp64Milli(toDateTime64(g_1.DateTimeValue, 3))) as MAX_1
		FROM
			LinqDataTypes g_1
		GROUP BY
			g_1.ID
	) g_2

