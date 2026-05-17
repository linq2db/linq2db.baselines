-- DuckDB

SELECT
	EXTRACT(dow FROM t.DateTimeValue)
FROM
	LinqDataTypes t

