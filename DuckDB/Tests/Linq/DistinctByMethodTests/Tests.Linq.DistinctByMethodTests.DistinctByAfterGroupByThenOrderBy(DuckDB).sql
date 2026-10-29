-- DuckDB
SELECT DISTINCT ON (t1.Key_1 % 2)
	t1.Key_1
FROM
	(
		SELECT DISTINCT
			g_1.ParentID % 3 as Key_1
		FROM
			Parent g_1
	) t1
ORDER BY
	t1.Key_1 % 2,
	t1.Key_1 DESC

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

