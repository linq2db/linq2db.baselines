-- DuckDB
DECLARE $take  -- Int32
SET     $take = 5
DECLARE $skip  -- Int32
SET     $skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as c1
		FROM
			Child t1
		LIMIT $take OFFSET $skip 
	) t2

