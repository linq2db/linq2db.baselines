-- DuckDB

SELECT
	make_timestamp(EXTRACT(year FROM t.DateTimeValue) + 1, 10, 1, 0, 0, 0)
FROM
	LinqDataTypes t

