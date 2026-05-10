-- DuckDB

SELECT
	EXTRACT(minute FROM t.DateTimeValue)
FROM
	LinqDataTypes t

