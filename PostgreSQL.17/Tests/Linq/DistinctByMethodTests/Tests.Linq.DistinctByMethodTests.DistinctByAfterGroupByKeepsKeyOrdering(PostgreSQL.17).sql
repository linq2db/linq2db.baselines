-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT DISTINCT ON (Floor(g_2."Key_1"::decimal % 2)::Int)
			g_2."Key_1",
			COUNT(*) as "Count_1"
		FROM
			(
				SELECT
					Floor(g_1."ParentID"::decimal % 3)::Int as "Key_1"
				FROM
					"Parent" g_1
			) g_2
		GROUP BY
			g_2."Key_1"
		ORDER BY
			Floor(g_2."Key_1"::decimal % 2)::Int,
			g_2."Key_1"
	) t1
ORDER BY
	t1."Key_1"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

