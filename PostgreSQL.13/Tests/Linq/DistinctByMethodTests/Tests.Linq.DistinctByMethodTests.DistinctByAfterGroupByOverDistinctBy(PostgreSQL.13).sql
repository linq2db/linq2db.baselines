-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Key_1",
	t1."Max_1"
FROM
	(
		SELECT DISTINCT ON (Floor(g_3."Key_1"::decimal % 2)::Int)
			g_3."Key_1",
			MAX(g_3."ParentID") as "Max_1"
		FROM
			(
				SELECT DISTINCT ON (Coalesce(g_2."Value1", 0))
					Coalesce(g_2."Value1", 0) as "Key_1",
					g_2."ParentID"
				FROM
					(
						SELECT
							g_1."Value1",
							g_1."ParentID"
						FROM
							"Parent" g_1
					) g_2
				ORDER BY
					Coalesce(g_2."Value1", 0) DESC,
					g_2."ParentID" DESC
			) g_3
		GROUP BY
			g_3."Key_1"
		ORDER BY
			Floor(g_3."Key_1"::decimal % 2)::Int,
			g_3."Key_1" DESC
	) t1
ORDER BY
	t1."Key_1" DESC

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

