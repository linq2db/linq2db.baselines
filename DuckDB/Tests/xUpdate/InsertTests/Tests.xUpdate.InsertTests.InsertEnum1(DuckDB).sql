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
	$Value1
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
	t1.ParentID = $id AND t1.Value1 = $Value1

-- DuckDB

DELETE FROM
	Parent t1
WHERE
	t1.ParentID > 1000

