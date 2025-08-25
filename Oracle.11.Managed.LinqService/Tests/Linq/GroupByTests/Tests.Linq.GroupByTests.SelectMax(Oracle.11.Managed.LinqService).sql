BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	MAX(g_1."ChildID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

