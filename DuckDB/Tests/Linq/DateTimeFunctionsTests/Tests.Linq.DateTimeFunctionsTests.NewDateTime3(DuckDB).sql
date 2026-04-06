-- DuckDB

SELECT
	make_timestamp(EXTRACT(year FROM t.DateTimeValue), 10, 1, 20, 35, CAST(44 AS DOUBLE))
FROM
	LinqDataTypes t

