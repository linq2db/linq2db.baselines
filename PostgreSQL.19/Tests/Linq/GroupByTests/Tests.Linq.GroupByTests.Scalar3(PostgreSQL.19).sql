-- PostgreSQL.19 PostgreSQL13

SELECT
	MAX(g_1."ChildID") FILTER (WHERE g_1."ChildID" > 0)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

