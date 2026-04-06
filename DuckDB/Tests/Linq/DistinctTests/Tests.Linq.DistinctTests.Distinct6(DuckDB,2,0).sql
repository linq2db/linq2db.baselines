-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 0
DECLARE $Value1  -- Int32
SET     $Value1 = 3

SELECT DISTINCT
	Coalesce(p.Value1, p.ParentID + CAST($ParentID AS INTEGER)),
	CAST($Value1 AS INTEGER)
FROM
	Parent p

-- DuckDB

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

