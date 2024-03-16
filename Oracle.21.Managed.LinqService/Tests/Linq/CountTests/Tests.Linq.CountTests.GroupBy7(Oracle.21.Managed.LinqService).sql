BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	Count(*),
	Max(g_1."ChildID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

