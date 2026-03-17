-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*) FILTER (WHERE g_1."ChildID" < 30 AND g_1."ChildID" >= 20)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

