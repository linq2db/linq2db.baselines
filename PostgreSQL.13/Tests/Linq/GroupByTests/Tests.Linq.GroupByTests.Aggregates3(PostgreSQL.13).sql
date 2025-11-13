-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*) FILTER (WHERE g_1."ChildID" > 30),
	SUM(g_1."ChildID") FILTER (WHERE g_1."ChildID" > 30),
	MIN(g_1."ChildID") FILTER (WHERE g_1."ChildID" > 30),
	MAX(g_1."ChildID") FILTER (WHERE g_1."ChildID" > 30),
	AVG(g_1."ChildID") FILTER (WHERE g_1."ChildID" > 30)
FROM
	"Child" g_1
WHERE
	g_1."ChildID" > 30
GROUP BY
	g_1."ParentID"

