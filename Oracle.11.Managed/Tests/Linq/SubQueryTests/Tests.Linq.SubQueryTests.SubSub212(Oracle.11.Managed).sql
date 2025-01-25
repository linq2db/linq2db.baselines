BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."ParentID",
	m_1."ParentID_1",
	d."ParentID",
	d."ChildID",
	d."GrandChildID",
	d."ParentID" + 1
FROM
	(
		SELECT DISTINCT
			a_Parent."ParentID",
			p2."ParentID" as "ParentID_1"
		FROM
			"Child" p2
				LEFT JOIN "Parent" a_Parent ON p2."ParentID" = a_Parent."ParentID"
		WHERE
			p2."ParentID" > -1 AND p2."ParentID" > -2
	) m_1
		INNER JOIN "GrandChild" d ON m_1."ParentID" IS NOT NULL AND (m_1."ParentID" = d."ParentID" OR m_1."ParentID" IS NULL AND d."ParentID" IS NULL) AND d."ParentID" + 1 < m_1."ParentID_1" + 2 AND d."ParentID" + 1 < m_1."ParentID_1" + 2

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	a_Parent."ParentID",
	p1."ParentID"
FROM
	"Child" p1
		LEFT JOIN "Parent" a_Parent ON p1."ParentID" = a_Parent."ParentID"
WHERE
	p1."ParentID" > -1 AND p1."ParentID" > -2

