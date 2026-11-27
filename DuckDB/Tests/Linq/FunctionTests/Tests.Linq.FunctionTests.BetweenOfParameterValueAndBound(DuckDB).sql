-- DuckDB
DECLARE $value INTEGER -- Int32
SET     $value = 3
DECLARE $low INTEGER -- Int32
SET     $low = 0

SELECT
	p.ParentID
FROM
	Parent p
WHERE
	$value BETWEEN $low AND p.ParentID

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- DuckDB
DECLARE $value INTEGER -- Int32
SET     $value = 3
DECLARE $low INTEGER -- Int32
SET     $low = 0

SELECT
	p.ParentID
FROM
	Parent p
WHERE
	$value NOT BETWEEN $low AND p.ParentID

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

