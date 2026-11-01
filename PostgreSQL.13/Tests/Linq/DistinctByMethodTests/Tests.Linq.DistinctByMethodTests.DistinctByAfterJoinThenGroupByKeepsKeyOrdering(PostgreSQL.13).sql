-- PostgreSQL.13 PostgreSQL12
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
					g_1."ParentID" as "Key_1"
				FROM
					"Parent" g_1
						INNER JOIN "Child" c_1 ON g_1."ParentID" = c_1."ParentID"
			) g_2
		GROUP BY
			g_2."Key_1"
		ORDER BY
			Floor(g_2."Key_1"::decimal % 2)::Int,
			g_2."Key_1"
	) t1
ORDER BY
	t1."Key_1"

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

