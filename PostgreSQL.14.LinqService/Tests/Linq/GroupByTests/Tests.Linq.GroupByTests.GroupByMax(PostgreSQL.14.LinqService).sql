BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	MAX(g_1."ParentID")
FROM
	"Child" g_1
GROUP BY
	g_1."ChildID"

