-- DuckDB

SELECT
	EXTRACT(quarter FROM t.DateTimeValue)
FROM
	LinqDataTypes t

