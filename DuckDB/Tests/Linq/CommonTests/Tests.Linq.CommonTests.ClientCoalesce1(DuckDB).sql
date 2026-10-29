-- DuckDB
DECLARE $Value1 INTEGER -- Int32
SET     $Value1 = 100

SELECT
	x.Value1
FROM
	Parent x
WHERE
	Coalesce(x.Value1, $Value1) > 10

-- DuckDB
SELECT
	p.Value1
FROM
	Parent p

