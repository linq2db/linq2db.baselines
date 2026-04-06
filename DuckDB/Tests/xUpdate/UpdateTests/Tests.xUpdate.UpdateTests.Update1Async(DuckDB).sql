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
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = CAST($ParentID AS INTEGER)

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001

UPDATE
	Parent
SET
	ParentID = Parent.ParentID + 1
WHERE
	Parent.ParentID = CAST($ParentID AS INTEGER)

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1002

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = CAST($p AS INTEGER)

