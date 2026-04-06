-- DuckDB
DECLARE $Value1  -- Int32
SET     $Value1 = 100

SELECT
	x.Value1
FROM
	Parent x
WHERE
	Coalesce(x.Value1, CAST($Value1 AS INTEGER)) > 10

-- DuckDB

SELECT
	p.Value1
FROM
	Parent p

