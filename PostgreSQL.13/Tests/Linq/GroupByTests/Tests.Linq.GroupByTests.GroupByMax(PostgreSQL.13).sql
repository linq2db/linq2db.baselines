-- PostgreSQL.13 PostgreSQL13

SELECT
	MAX(g_1."ParentID")
FROM
	"Child" g_1
GROUP BY
	g_1."ChildID"

