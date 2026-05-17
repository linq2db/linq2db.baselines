-- DuckDB

SELECT
	EXTRACT(day FROM t.DateTimeValue) % 7
FROM
	LinqDataTypes t

