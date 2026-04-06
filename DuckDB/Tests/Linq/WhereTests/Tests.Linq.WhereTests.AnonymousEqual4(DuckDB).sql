-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 2

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER) AND p.Value1 IS NULL

