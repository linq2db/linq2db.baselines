-- DuckDB

DELETE FROM
	Parent t1
WHERE
	t1.ParentID > 1000

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
	Parent t1
WHERE
	t1.ParentID = CAST($id AS INTEGER)

-- DuckDB

DELETE FROM
	Parent t1
WHERE
	t1.ParentID > 1000

