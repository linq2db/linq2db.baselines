-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*) FILTER (WHERE g_1."ChildID" > 30),
	COUNT(*) FILTER (WHERE g_1."ChildID" > 30),
	COUNT(*)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

