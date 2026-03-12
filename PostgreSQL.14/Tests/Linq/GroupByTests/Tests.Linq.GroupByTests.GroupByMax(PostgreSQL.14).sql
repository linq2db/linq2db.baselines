-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	MAX(g_1."ParentID")
FROM
	"Child" g_1
GROUP BY
	g_1."ChildID"

