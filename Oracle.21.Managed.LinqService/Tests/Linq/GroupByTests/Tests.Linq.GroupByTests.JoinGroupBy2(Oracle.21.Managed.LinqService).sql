BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	g_1."ParentID"
FROM
	"Child" gc
		INNER JOIN "Parent" a_Parent ON gc."ParentID" = a_Parent."ParentID"
		INNER JOIN "Child" g_1 ON a_Parent."ParentID" = g_1."ParentID"
GROUP BY
	g_1."ParentID"

