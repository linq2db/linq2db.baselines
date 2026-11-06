-- DuckDB
SELECT
	t1.Key_1,
	t1.C_1
FROM
	(
		SELECT DISTINCT ON (g_3.Key_1 % 2)
			g_3.c1,
			g_3.Key_1,
			g_3.C_1
		FROM
			(
				SELECT
					g_2.Key_1,
					-g_2.Key_1 as c1,
					COUNT(*) as C_1
				FROM
					(
						SELECT DISTINCT
							g_1.ParentID as Key_1
						FROM
							Parent g_1
					) g_2
				GROUP BY
					g_2.Key_1
			) g_3
		ORDER BY
			g_3.Key_1 % 2,
			g_3.c1
	) t1
ORDER BY
	t1.c1

-- DuckDB
SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

