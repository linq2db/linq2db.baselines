-- DuckDB

SELECT
	EXTRACT(year FROM t.DateTimeValue) % 7
FROM
	LinqDataTypes t

