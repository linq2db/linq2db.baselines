-- DuckDB

SELECT
	t.DateTimeValue + CAST(t.SmallIntValue * Interval '1 Minute' AS INTERVAL)
FROM
	LinqDataTypes t

