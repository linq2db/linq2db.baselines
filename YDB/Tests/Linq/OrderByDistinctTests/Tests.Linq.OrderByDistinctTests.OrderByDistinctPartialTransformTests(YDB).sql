-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
DECLARE $skip Int32
SET     $skip = 0

SELECT DISTINCT
	x.DuplicateData as DuplicateData,
	x.OrderData2 as OrderData2
FROM
	OrderByDistinctData x
ORDER BY
	OrderData2 DESC
LIMIT $take OFFSET $skip 

