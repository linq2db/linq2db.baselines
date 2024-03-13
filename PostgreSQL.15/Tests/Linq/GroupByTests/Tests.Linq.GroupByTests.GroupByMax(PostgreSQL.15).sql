BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Max(g_1."ParentID")
FROM
	"Child" g_1
GROUP BY
	g_1."ChildID"

