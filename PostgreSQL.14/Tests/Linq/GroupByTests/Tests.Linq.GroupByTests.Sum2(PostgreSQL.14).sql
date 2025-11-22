-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	SUM(g_1."ChildID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

