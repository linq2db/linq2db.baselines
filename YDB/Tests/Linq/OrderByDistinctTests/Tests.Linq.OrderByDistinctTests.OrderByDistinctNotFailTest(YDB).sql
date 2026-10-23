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

