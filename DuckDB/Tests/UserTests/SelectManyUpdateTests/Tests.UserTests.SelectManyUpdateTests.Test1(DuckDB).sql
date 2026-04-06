-- DuckDB
DECLARE $Value1  -- Object
SET     $Value1 = NULL

UPDATE
	Parent
SET
	Value1 = CAST($Value1 AS BIGINT)
FROM
	Parent x
WHERE
	x.ParentID IN (0, 0) AND x.ParentID = Parent.Value1

