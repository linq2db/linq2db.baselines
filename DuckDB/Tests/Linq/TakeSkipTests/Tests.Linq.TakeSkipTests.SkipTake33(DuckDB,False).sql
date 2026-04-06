-- DuckDB
DECLARE $take  -- Int32
SET     $take = 5
DECLARE $skip  -- Int32
SET     $skip = 3

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

-- DuckDB
DECLARE $take  -- Int32
SET     $take = 5
DECLARE $skip  -- Int32
SET     $skip = 3

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1
ORDER BY
	t1.ChildID
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

