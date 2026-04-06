-- DuckDB

SELECT
	EXTRACT(week FROM t.DateTimeValue)
FROM
	LinqDataTypes t

