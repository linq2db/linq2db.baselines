BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	MAX(g_1."ChildID"),
	MAX(g_1."ChildID" + g_1."ParentID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

