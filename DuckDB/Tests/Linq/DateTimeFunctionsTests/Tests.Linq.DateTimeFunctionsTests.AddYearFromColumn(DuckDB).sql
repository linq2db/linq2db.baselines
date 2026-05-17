-- DuckDB

SELECT
	CAST(t.DateTimeValue + t.SmallIntValue * Interval '1 Year' AS DATE)
FROM
	LinqDataTypes t

