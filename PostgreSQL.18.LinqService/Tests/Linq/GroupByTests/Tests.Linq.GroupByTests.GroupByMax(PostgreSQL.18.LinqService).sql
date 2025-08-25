BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	MAX(g_1."ParentID")
FROM
	"Child" g_1
GROUP BY
	g_1."ChildID"

