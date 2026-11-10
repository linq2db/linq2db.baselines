-- DuckDB
DECLARE $take INTEGER -- Int32
SET     $take = 3
DECLARE $skip INTEGER -- Int32
SET     $skip = 0

SELECT DISTINCT
	x.DuplicateData,
	x.OrderData1
FROM
	OrderByDistinctData x
ORDER BY
	x.OrderData1
LIMIT $take OFFSET $skip 

