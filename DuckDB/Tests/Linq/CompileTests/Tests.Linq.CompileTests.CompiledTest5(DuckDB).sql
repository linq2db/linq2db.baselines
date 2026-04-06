-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1
DECLARE $p_1  -- Int32
SET     $p_1 = 1

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = CAST($p AS INTEGER) AND p.Value1 = CAST($p_1 AS INTEGER)

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 2

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = CAST($p AS INTEGER) AND p.Value1 IS NULL

