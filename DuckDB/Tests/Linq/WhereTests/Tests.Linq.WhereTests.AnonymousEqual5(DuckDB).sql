-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 3
DECLARE $Value1  -- Int32
SET     $Value1 = 3

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER) AND p.Value1 = CAST($Value1 AS INTEGER)

