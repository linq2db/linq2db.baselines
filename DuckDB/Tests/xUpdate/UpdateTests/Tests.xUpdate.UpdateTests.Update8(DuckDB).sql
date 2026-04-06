-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001
DECLARE $Value1  -- Int32
SET     $Value1 = 1001

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	CAST($ParentID AS INTEGER),
	CAST($Value1 AS INTEGER)
)

-- DuckDB
DECLARE $Value1  -- Int32
SET     $Value1 = 1002
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001

UPDATE
	Parent
SET
	Value1 = CAST($Value1 AS INTEGER)
WHERE
	Parent.ParentID = CAST($ParentID AS INTEGER)

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER)
LIMIT 2

