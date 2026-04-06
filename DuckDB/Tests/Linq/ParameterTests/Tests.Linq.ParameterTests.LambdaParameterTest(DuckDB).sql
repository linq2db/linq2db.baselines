-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1

SELECT
	r.ParentID,
	r.Value1
FROM
	Parent r
WHERE
	r.ParentID = CAST($p AS INTEGER)

-- DuckDB

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

