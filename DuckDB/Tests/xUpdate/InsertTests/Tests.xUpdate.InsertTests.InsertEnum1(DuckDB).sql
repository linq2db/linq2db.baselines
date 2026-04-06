-- DuckDB

DELETE FROM
	Parent t1
WHERE
	t1.ParentID > 1000

-- DuckDB
DECLARE $Value1  -- Int32
SET     $Value1 = 2

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	1001,
	CAST($Value1 AS INTEGER)
)

-- DuckDB
DECLARE $id  -- Int32
SET     $id = 1001
DECLARE $Value1  -- Int32
SET     $Value1 = 2

SELECT
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID = CAST($id AS INTEGER) AND t1.Value1 = CAST($Value1 AS INTEGER)

-- DuckDB

DELETE FROM
	Parent t1
WHERE
	t1.ParentID > 1000

