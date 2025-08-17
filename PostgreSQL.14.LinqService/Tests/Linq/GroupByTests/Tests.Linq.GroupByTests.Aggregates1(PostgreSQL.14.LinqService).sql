BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	COUNT(*),
	SUM(g_1."ChildID"),
	MIN(g_1."ChildID"),
	MAX(g_1."ChildID"),
	AVG(g_1."ChildID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

