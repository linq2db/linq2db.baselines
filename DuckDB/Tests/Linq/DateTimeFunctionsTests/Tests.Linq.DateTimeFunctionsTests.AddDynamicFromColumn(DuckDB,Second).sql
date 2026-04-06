-- DuckDB

SELECT
	t.DateTimeValue + CAST(t.SmallIntValue * Interval '1 Second' AS INTERVAL)
FROM
	LinqDataTypes t

