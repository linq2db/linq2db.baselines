-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	g_1."ParentID"
FROM
	"GrandChild" g_1
GROUP BY
	g_1."ParentID",
	g_1."ChildID"

