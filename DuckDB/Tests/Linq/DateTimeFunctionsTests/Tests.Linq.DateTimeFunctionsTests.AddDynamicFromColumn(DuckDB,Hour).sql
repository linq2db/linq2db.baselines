-- DuckDB

SELECT
	t.DateTimeValue + t.SmallIntValue * Interval '1 Hour'
FROM
	LinqDataTypes t

