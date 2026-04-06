-- DuckDB

SELECT
	EXTRACT(second FROM t.DateTimeValue) % 7
FROM
	LinqDataTypes t

