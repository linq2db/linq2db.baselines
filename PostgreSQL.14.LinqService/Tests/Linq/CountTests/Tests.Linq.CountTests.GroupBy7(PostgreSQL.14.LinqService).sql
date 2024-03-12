BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*),
	Max(g_1."ChildID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

