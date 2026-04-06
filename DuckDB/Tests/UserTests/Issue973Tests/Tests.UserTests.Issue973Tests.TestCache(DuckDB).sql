-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1
DECLARE $p_1  -- Int32
SET     $p_1 = 2
DECLARE $p_2  -- Int32
SET     $p_2 = 3
DECLARE $param  -- Int32
SET     $param = 4

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	o.ParentID IN (CAST($p AS INTEGER), CAST($p_1 AS INTEGER), CAST($p_2 AS INTEGER)) OR
	o.ParentID = CAST($param AS INTEGER)

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1
DECLARE $p_1  -- Int32
SET     $p_1 = 2
DECLARE $p_2  -- Int32
SET     $p_2 = 3
DECLARE $param  -- Int32
SET     $param = 4

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	o.ParentID IN (CAST($p AS INTEGER), CAST($p_1 AS INTEGER), CAST($p_2 AS INTEGER)) OR
	o.ParentID = CAST($param AS INTEGER)

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 4
DECLARE $p_1  -- Int32
SET     $p_1 = 5
DECLARE $p_2  -- Int32
SET     $p_2 = 6
DECLARE $param  -- Int32
SET     $param = 4

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	o.ParentID IN (CAST($p AS INTEGER), CAST($p_1 AS INTEGER), CAST($p_2 AS INTEGER)) OR
	o.ParentID = CAST($param AS INTEGER)

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 4
DECLARE $p_1  -- Int32
SET     $p_1 = 5
DECLARE $p_2  -- Int32
SET     $p_2 = 6
DECLARE $param  -- Int32
SET     $param = 4

SELECT
	o.ParentID,
	o.Value1
FROM
	Parent o
WHERE
	o.ParentID IN (CAST($p AS INTEGER), CAST($p_1 AS INTEGER), CAST($p_2 AS INTEGER)) OR
	o.ParentID = CAST($param AS INTEGER)

