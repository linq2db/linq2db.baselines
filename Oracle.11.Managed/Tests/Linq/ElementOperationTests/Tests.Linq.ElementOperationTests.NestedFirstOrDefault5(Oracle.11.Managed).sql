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
			"GrandChild" p
				LEFT JOIN "Child" a_Child ON p."ParentID" = a_Child."ParentID" AND p."ChildID" = a_Child."ChildID"
				LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"
		WHERE
			p."ChildID" > 0
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" IS NOT NULL AND m_1."ParentID" = d."ParentID"
ORDER BY
	d."ChildID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	a_Parent."ParentID"
FROM
	"GrandChild" p
		LEFT JOIN "Child" a_Child ON p."ParentID" = a_Child."ParentID" AND p."ChildID" = a_Child."ChildID"
		LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"
WHERE
	p."ChildID" > 0

