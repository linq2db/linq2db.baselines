BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			g_1."ParentID"
		FROM
			"Child" g_1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	g_1."ParentID"
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

