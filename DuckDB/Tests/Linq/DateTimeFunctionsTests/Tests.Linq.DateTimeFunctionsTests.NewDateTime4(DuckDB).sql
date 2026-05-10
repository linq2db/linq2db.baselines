-- DuckDB

SELECT
	make_timestamp(EXTRACT(year FROM p.DateTimeValue), 10, 1, 20, 35, CAST(44 AS DOUBLE))
FROM
	LinqDataTypes p

