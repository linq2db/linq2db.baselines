-- DuckDB
DECLARE $v1  -- Int32
SET     $v1 = 1

UPDATE
	Parent
SET
	Value1 = CAST($v1 AS INTEGER)
WHERE
	Parent.Value1 = CAST($v1 AS INTEGER)

