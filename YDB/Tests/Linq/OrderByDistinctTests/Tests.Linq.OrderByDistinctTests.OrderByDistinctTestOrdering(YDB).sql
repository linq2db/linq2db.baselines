-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT DISTINCT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT DISTINCT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT DISTINCT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT DISTINCT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT DISTINCT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1 DESC,
	x.OrderData2 DESC
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT DISTINCT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT
	x.DuplicateData as DuplicateData
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1,
	x.OrderData2 DESC
LIMIT $take OFFSET $skip 

