BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	g_1."ParentID",
	g_1."ChildID"
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID",
	g_1."ChildID"

