-- DuckDB
DECLARE $take  -- Int32
SET     $take = 3

SELECT DISTINCT
	p.Value1
FROM
	Parent p
ORDER BY
	p.Value1 DESC
LIMIT $take

-- DuckDB

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

