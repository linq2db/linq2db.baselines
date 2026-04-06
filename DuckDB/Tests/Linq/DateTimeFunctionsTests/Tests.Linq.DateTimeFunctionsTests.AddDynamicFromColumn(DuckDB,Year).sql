-- DuckDB

SELECT
	t.DateTimeValue + CAST(t.SmallIntValue * Interval '1 Year' AS INTERVAL)
FROM
	LinqDataTypes t

