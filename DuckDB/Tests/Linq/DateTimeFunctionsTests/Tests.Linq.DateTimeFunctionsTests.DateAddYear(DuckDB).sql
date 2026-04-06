-- DuckDB

SELECT
	CAST(t.DateTimeValue + CAST(11 * Interval '1 Year' AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

