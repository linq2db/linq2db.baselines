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

-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3
DECLARE $skip  -- Int32
SET     $skip = 0

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

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

-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3
DECLARE $skip  -- Int32
SET     $skip = 0

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

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

-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3
DECLARE $skip  -- Int32
SET     $skip = 0

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

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

-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3
DECLARE $skip  -- Int32
SET     $skip = 0

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

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

-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3
DECLARE $skip  -- Int32
SET     $skip = 0

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC,
	x.OrderData2 DESC
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

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

-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3
DECLARE $skip  -- Int32
SET     $skip = 0

SELECT
	x.DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC
LIMIT CAST($take AS INTEGER) OFFSET CAST($skip AS INTEGER) 

