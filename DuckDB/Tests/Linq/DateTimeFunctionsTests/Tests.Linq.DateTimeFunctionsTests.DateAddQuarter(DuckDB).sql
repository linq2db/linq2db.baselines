-- DuckDB

SELECT
	CAST(t.DateTimeValue + -Interval '1 Month' * 3 AS DATE)
FROM
	LinqDataTypes t

