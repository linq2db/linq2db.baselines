-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001

DELETE FROM
	Parent t1
WHERE
	t1.ParentID = $ParentID

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
	$ParentID,
	$Value1
)

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = $ParentID

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001

DELETE FROM
	Parent p
WHERE
	p.ParentID = $ParentID

-- DuckDB
DECLARE $ParentID  -- Int32
SET     $ParentID = 1001

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.ParentID = $ParentID

