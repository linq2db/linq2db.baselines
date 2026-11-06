-- DuckDB
SELECT
	t1.Key_1,
	t1.Count_1
FROM
	(
		SELECT DISTINCT ON (g_2.Key_1 % 2)
			g_2.N,
			g_2.Key_1,
			g_2.Count_1
		FROM
			(
				SELECT
					g_1.ParentID as Key_1,
					-g_1.ParentID as N,
					COUNT(*) as Count_1
				FROM
					Parent g_1
				GROUP BY
					g_1.ParentID
			) g_2
		ORDER BY
			g_2.Key_1 % 2,
			g_2.N
	) t1
ORDER BY
	t1.N

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

