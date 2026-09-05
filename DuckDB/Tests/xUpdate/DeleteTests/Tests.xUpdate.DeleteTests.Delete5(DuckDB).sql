-- DuckDB
DELETE FROM
	Parent t1
WHERE
	t1.ParentID > 1000

-- DuckDB
DELETE FROM
	Parent t1
WHERE
	t1.ParentID > 1000

-- DuckDB
DECLARE $values  -- Int32
SET     $values = 1001

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	$values,
	1
)

-- DuckDB
DECLARE $values  -- Int32
SET     $values = 1002

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	$values,
	1
)

-- DuckDB
SELECT
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID > 1000

-- DuckDB
DELETE FROM
	Parent t1
WHERE
	t1.ParentID IN (1001, 1002)

-- DuckDB
SELECT
	COUNT(*)
FROM
	Parent t1
WHERE
	t1.ParentID > 1000

