-- DuckDB

SELECT
	make_timestamp(2010, t.ID, 1, 0, 0, 0)
FROM
	LinqDataTypes t
WHERE
	EXTRACT(year FROM make_timestamp(2010, t.ID, 1, 0, 0, 0)) = 2010

