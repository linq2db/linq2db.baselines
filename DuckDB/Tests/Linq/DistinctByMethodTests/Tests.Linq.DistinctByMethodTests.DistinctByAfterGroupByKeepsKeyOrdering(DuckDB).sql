-- DuckDB
SELECT DISTINCT ON (g_2.Key_1 % 2)
	g_2.Key_1,
	COUNT(*)
FROM
	(
		SELECT
			g_1.ParentID % 3 as Key_1
		FROM
			Parent g_1
	) g_2
GROUP BY
	g_2.Key_1
ORDER BY
	g_2.Key_1 % 2,
	g_2.Key_1

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

