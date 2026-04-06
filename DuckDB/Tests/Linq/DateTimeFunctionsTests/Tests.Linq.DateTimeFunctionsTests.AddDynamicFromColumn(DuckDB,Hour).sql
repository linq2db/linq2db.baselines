-- DuckDB

SELECT
	t.DateTimeValue + CAST(t.SmallIntValue * Interval '1 Hour' AS INTERVAL)
FROM
	LinqDataTypes t

