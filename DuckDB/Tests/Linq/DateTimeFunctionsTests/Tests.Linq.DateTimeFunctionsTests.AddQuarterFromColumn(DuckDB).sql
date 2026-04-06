-- DuckDB

SELECT
	CAST(t.DateTimeValue + CAST((t.SmallIntValue * Interval '1 Month') * 3 AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

