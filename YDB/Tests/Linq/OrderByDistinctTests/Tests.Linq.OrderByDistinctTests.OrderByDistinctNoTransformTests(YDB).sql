-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT DISTINCT
	x.DuplicateData as DuplicateData,
	x.OrderData1 as OrderData1
FROM
	OrderByDistinctData x
ORDER BY
	OrderData1
LIMIT $take OFFSET $skip 

