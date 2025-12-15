-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*),
	MAX(g_1."ChildID")
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

