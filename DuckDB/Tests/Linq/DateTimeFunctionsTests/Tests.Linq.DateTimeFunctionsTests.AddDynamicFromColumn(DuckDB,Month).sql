-- DuckDB

SELECT
	t.DateTimeValue + CAST(t.SmallIntValue * Interval '1 Month' AS INTERVAL)
FROM
	LinqDataTypes t

