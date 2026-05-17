-- DuckDB

SELECT
	EXTRACT(millisecond FROM t.DateTimeValue) % 1000
FROM
	LinqDataTypes t

