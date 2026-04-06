-- DuckDB

SELECT
	EXTRACT(minute FROM t.DateTimeValue) % 7
FROM
	LinqDataTypes t

