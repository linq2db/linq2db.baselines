-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	MAX(g_1."ChildID"),
	MAX(g_1."ChildID" + g_1."ParentID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

