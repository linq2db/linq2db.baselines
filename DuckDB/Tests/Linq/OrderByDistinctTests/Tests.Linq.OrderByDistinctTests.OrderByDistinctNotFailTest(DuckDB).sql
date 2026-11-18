-- DuckDB
DECLARE $take INTEGER -- Int32
SET     $take = 3
DECLARE $skip INTEGER -- Int32
SET     $skip = 0

SELECT DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x
LIMIT $take OFFSET $skip 

