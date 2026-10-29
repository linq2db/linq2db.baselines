-- DuckDB
DECLARE $take  -- Int32
SET     $take = 2

SELECT
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT DISTINCT ON (t1.Value1)
			t1.ParentID,
			t1.Value1
		FROM
			Parent t1
		ORDER BY
			t1.Value1,
			t1.ParentID DESC
	) t2
ORDER BY
	t2.ParentID DESC
LIMIT $take

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

