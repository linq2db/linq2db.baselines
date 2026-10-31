-- DuckDB
SELECT
	t1.Key_1,
	t1.Count_1
FROM
	(
		SELECT DISTINCT ON (g_2.Key_1 % 2)
			g_2.Key_1,
			COUNT(*) as Count_1
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
	) t1
ORDER BY
	t1.Key_1

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

