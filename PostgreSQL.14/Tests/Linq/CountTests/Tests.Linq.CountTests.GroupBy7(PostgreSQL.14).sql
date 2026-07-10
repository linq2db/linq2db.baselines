-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*),
	MAX(g_1."ChildID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

