-- DuckDB

SELECT
	make_timestamp(EXTRACT(year FROM p.DateTimeValue), 10, 1, 0, 0, 0)
FROM
	LinqDataTypes p

