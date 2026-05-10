-- DuckDB
DECLARE $year  -- Int32
SET     $year = 2010

SELECT
	make_timestamp($year, t.ID, 1, 0, 0, 0)
FROM
	LinqDataTypes t
WHERE
	EXTRACT(year FROM make_timestamp($year, t.ID, 1, 0, 0, 0)) = 2010

