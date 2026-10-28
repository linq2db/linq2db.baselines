-- PostgreSQL.11 PostgreSQL
SELECT DISTINCT ON (g_3."Count_1")
	g_3."Key_1",
	g_3."Count_1"
FROM
	(
		SELECT
			COUNT(*) as "Count_1",
			g_2."Key_1"
		FROM
			(
				SELECT
					Floor(g_1."ParentID"::decimal % 3)::Int as "Key_1"
				FROM
					"Parent" g_1
			) g_2
		GROUP BY
			g_2."Key_1"
	) g_3
ORDER BY
	g_3."Count_1",
	g_3."Key_1"

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

