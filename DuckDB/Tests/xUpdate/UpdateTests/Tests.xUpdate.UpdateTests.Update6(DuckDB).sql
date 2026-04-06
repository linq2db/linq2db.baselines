-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001
DECLARE $Value1  -- Int32
SET     $Value1 = 1

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
DECLARE $id  -- Int32
SET     $id = 1001

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = CAST($id AS INTEGER) AND p.Value1 = 1

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001

UPDATE
	Parent
SET
	Value1 = 2
WHERE
	Parent.ParentID = CAST($id AS INTEGER)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = CAST($id AS INTEGER) AND p.Value1 = 2

