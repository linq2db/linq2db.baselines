-- DuckDB
DECLARE $p  -- Int32
SET     $p = 2

SELECT
	CAST($p AS INTEGER),
	c_1.Id
FROM
	AsyncDataTable c_1
WHERE
	c_1.Id = CAST($p AS INTEGER)
LIMIT 1

