-- DuckDB

SELECT
	CAST(t.DateTimeValue + CAST(t.SmallIntValue * Interval '1 Year' AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

