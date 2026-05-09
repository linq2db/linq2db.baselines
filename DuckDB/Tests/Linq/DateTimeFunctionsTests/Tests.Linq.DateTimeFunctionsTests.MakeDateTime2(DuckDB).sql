-- DuckDB

SELECT
	make_timestamp(2010, t.ID, 1, 20, 35, CAST(44 AS DOUBLE))
FROM
	LinqDataTypes t
WHERE
	EXTRACT(year FROM make_timestamp(2010, t.ID, 1, 20, 35, CAST(44 AS DOUBLE))) = 2010

