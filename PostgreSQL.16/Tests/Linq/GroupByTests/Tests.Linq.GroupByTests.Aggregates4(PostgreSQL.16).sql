-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*) FILTER (WHERE g_1."ChildID" > 30),
	SUM(g_1."ChildID") FILTER (WHERE g_1."ChildID" > 30)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

