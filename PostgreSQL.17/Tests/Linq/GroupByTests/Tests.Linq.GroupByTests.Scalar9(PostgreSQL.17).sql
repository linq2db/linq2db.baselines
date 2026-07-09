-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*) FILTER (WHERE g_1."ChildID" < 30)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

