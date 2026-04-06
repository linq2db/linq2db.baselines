-- DuckDB
DECLARE $month  -- Int32
SET     $month = 1

SELECT
	make_timestamp(2010 + t.ID, CAST($month AS INTEGER), 1, 0, 0, 0)
FROM
	LinqDataTypes t

