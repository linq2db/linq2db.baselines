-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	MAX(g_1."ChildID") FILTER (WHERE g_1."ParentID" < 3)
FROM
	"Child" g_1
WHERE
	g_1."ParentID" < 3
GROUP BY
	g_1."ParentID"

