-- DuckDB
DECLARE $take INTEGER -- Int32
SET     $take = 1
DECLARE $skip INTEGER -- Int32
SET     $skip = 1

SELECT DISTINCT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
ORDER BY
	t1.ParentID DESC
LIMIT $take OFFSET $skip 

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

