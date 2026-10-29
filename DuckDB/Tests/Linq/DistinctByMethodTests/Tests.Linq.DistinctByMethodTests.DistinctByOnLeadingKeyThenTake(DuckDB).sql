-- DuckDB
DECLARE $take  -- Int32
SET     $take = 2

SELECT DISTINCT ON (t1.ParentID % 3)
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
ORDER BY
	t1.ParentID % 3,
	t1.ParentID DESC
LIMIT $take

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

