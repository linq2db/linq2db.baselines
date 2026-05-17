-- DuckDB

SELECT
	t.DateTimeValue + t.SmallIntValue * Interval '1 Minute'
FROM
	LinqDataTypes t

