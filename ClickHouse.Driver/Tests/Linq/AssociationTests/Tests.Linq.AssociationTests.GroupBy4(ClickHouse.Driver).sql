BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	g_2.Key_1
FROM
	(
		SELECT
			toYear(g_1.DateTimeValue) as Key_1
		FROM
			LinqDataTypes g_1
	) g_2
GROUP BY
	g_2.Key_1

