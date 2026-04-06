-- DuckDB

SELECT
	EXTRACT(dayofyear FROM t.DateTimeValue) % 7
FROM
	LinqDataTypes t

