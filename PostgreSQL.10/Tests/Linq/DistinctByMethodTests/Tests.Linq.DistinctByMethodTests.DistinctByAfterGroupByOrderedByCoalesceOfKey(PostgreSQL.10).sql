-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT DISTINCT ON (Floor(Coalesce(g_2."Key_1", 0)::decimal % 2)::Int)
			g_2.c1,
			g_2."Key_1",
			g_2."Count_1"
		FROM
			(
				SELECT
					g_1."Value1" as "Key_1",
					Coalesce(g_1."Value1", 0) as c1,
					COUNT(*) as "Count_1"
				FROM
					"Parent" g_1
				GROUP BY
					g_1."Value1"
			) g_2
		ORDER BY
			Floor(Coalesce(g_2."Key_1", 0)::decimal % 2)::Int,
			g_2.c1 DESC
	) t1
ORDER BY
	t1.c1 DESC

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

