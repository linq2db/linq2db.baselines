-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	g_1."ParentID"
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"
HAVING
	COUNT(*) FILTER (WHERE g_1."ChildID" > 20) > 2 OR COUNT(*) FILTER (WHERE g_1."ChildID" = 20) > 2

