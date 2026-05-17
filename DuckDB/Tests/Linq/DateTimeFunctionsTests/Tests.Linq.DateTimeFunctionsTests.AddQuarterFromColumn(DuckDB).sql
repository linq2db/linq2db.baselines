-- DuckDB

SELECT
	CAST(t.DateTimeValue + (t.SmallIntValue * Interval '1 Month') * 3 AS DATE)
FROM
	LinqDataTypes t

