-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*),
	MAX(g_1."ChildID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

