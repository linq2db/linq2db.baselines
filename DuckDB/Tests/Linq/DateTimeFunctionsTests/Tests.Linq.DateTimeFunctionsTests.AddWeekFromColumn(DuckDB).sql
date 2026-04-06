-- DuckDB

SELECT
	CAST(t.DateTimeValue + CAST((t.SmallIntValue * Interval '1 Day') * 7 AS INTERVAL) AS DATE)
FROM
	LinqDataTypes t

