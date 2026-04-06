-- DuckDB

SELECT
	g_1.ID,
	COUNT(*),
	SUM(ROUND(EXTRACT(EPOCH FROM ((g_1.DateTimeValue + CAST(1 * Interval '1 Day' AS INTERVAL))::timestamp - g_1.DateTimeValue::timestamp)) * 1000)),
	MAX(ROUND(EXTRACT(EPOCH FROM ((g_1.DateTimeValue + CAST(1 * Interval '1 Day' AS INTERVAL))::timestamp - g_1.DateTimeValue::timestamp)) * 1000))
FROM
	LinqDataTypes g_1
GROUP BY
	g_1.ID

