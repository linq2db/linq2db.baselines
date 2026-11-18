-- DuckDB
DECLARE $take INTEGER -- Int32
SET     $take = 1
DECLARE $skip INTEGER -- Int32
SET     $skip = 1

SELECT
	1
FROM
	Person t1
LIMIT $take OFFSET $skip 

