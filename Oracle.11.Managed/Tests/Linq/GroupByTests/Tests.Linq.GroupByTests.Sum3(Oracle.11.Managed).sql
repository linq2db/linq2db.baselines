BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			a_Parent."ParentID"
		FROM
			"Child" g_1
				LEFT JOIN "Parent" a_Parent ON g_1."ParentID" = a_Parent."ParentID"
		GROUP BY
			a_Parent."ParentID",
			a_Parent."Value1"
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" IS NOT NULL AND m_1."ParentID" = d."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	a_Parent."ParentID"
FROM
	"Child" g_1
		LEFT JOIN "Parent" a_Parent ON g_1."ParentID" = a_Parent."ParentID"
GROUP BY
	a_Parent."ParentID",
	a_Parent."Value1"

