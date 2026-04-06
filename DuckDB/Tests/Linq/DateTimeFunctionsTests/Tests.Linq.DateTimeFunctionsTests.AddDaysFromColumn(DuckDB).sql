-- DuckDB

SELECT
	t.DateTimeValue + CAST(t.SmallIntValue * Interval '1 Day' AS INTERVAL)
FROM
	LinqDataTypes t

