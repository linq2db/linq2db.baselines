-- DuckDB

SELECT
	CAST(t.DateTimeValue + -Interval '1 Day' * 7 AS DATE)
FROM
	LinqDataTypes t

