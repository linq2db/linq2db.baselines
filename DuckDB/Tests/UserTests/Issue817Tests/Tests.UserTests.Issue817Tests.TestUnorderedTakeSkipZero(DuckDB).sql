-- DuckDB
DECLARE $take  -- Int32
SET     $take = 1
DECLARE $skip  -- Int32
SET     $skip = 0

SELECT
	1
FROM
	Person t1
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

