-- DuckDB

SELECT
	CAST(t.DateTimeValue + Interval '1 Year' AS DATE)
FROM
	LinqDataTypes t

