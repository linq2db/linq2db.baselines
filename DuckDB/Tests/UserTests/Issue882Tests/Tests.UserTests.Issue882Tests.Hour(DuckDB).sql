-- DuckDB

SELECT
	EXTRACT(hour FROM t.DateTimeValue) % 7
FROM
	LinqDataTypes t

