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
	(
		SELECT
			MAX(g_1.OrderData1) as OrderData1,
			g_1.DuplicateData as DuplicateData
		FROM
			OrderByDistinctData g_1
		GROUP BY
			g_1.DuplicateData
	) x
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
	(
		SELECT
			MIN(g_1.OrderData1) as OrderData1,
			g_1.DuplicateData as DuplicateData
		FROM
			OrderByDistinctData g_1
		GROUP BY
			g_1.DuplicateData
	) x
ORDER BY
	x.OrderData1 DESC
LIMIT $take OFFSET $skip 

