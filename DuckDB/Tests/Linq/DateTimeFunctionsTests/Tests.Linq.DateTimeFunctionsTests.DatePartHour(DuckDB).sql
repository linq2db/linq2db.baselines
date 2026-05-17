-- DuckDB

SELECT
	EXTRACT(hour FROM t.DateTimeValue)
FROM
	LinqDataTypes t

