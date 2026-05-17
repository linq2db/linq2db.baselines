-- DuckDB

SELECT
	EXTRACT(month FROM t.DateTimeValue) % 7
FROM
	LinqDataTypes t

