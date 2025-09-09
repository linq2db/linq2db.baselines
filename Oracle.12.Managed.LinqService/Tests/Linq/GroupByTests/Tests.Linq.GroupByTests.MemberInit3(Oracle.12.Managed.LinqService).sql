BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_1."ParentID",
	g_1."ChildID"
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID",
	g_1."ChildID"

