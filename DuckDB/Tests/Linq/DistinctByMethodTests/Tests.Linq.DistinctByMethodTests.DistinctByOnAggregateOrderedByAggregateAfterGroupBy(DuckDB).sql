-- DuckDB
SELECT DISTINCT ON (t1.Count_1)
	t1.Key_1,
	t1.Count_1
FROM
	(
		SELECT
			COUNT(*) as Count_1,
			g_1.Value1 as Key_1
		FROM
			Parent g_1
		GROUP BY
			g_1.Value1
	) t1
ORDER BY
	t1.Count_1 DESC,
	Coalesce(t1.Key_1, 0) DESC

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

