-- DuckDB
DECLARE $take  -- Int32
SET     $take = 5
DECLARE $skip  -- Int32
SET     $skip = 2

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID DESC
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

-- DuckDB
DECLARE $take  -- Int32
SET     $take = 5
DECLARE $skip  -- Int32
SET     $skip = 2

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID DESC
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

