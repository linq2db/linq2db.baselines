-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = CAST($p AS INTEGER)

-- DuckDB

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 3
DECLARE $p_1  -- Int32
SET     $p_1 = 2

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = CAST($p AS INTEGER) OR x.ParentID = CAST($p_1 AS INTEGER)

-- DuckDB

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1
DECLARE $p_1  -- Int32
SET     $p_1 = 1

SELECT
	x.ParentID,
	x.Value1
FROM
	Parent x
WHERE
	x.ParentID = CAST($p AS INTEGER) OR x.ParentID = CAST($p_1 AS INTEGER)

-- DuckDB

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

