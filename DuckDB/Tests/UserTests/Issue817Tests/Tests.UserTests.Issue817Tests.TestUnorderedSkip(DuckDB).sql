-- DuckDB

SELECT
	COUNT(*)
FROM
	Person t1

-- DuckDB
DECLARE $skip  -- Int32
SET     $skip = 1

SELECT
	1
FROM
	Person t1
OFFSET CAST($skip AS INTEGER) 

