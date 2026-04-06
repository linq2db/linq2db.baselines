-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3
DECLARE $skip  -- Int32
SET     $skip = 0

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

