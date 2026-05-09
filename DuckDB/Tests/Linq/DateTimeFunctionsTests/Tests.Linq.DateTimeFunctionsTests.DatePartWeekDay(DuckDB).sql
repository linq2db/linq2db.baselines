-- DuckDB

SELECT
	EXTRACT(dow FROM t.DateTimeValue) + 1
FROM
	LinqDataTypes t

