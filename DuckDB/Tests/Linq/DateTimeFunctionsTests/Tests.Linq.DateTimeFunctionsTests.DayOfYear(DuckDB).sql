-- DuckDB

SELECT
	EXTRACT(dayofyear FROM t.DateTimeValue)
FROM
	LinqDataTypes t

