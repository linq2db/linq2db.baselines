-- DuckDB

SELECT
	CAST(t.DateTimeValue + (t.SmallIntValue * Interval '1 Day') * 7 AS DATE)
FROM
	LinqDataTypes t

