-- DuckDB

SELECT
	(EXTRACT(millisecond FROM t.DateTimeValue) % 1000) % 7
FROM
	LinqDataTypes t

