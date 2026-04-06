-- DuckDB

DELETE FROM
	Parent t1
WHERE
	t1.ParentID > 1000

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	CAST($ParentID AS INTEGER),
	1
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

