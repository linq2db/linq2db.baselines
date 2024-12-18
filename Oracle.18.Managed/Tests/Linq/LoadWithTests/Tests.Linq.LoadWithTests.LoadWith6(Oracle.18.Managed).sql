BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_1."ParentID",
	m_1."ChildID",
	d."ParentID",
	d."ChildID",
	d."GrandChildID",
	a_Child."ParentID",
	a_Child."ChildID",
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	"Child" m_1
		INNER JOIN "GrandChild" d ON m_1."ParentID" = d."ParentID" AND d."ParentID" IS NOT NULL AND m_1."ChildID" = d."ChildID" AND d."ChildID" IS NOT NULL
		LEFT JOIN "Child" a_Child ON d."ParentID" = a_Child."ParentID" AND d."ParentID" IS NOT NULL AND d."ChildID" = a_Child."ChildID" AND d."ChildID" IS NOT NULL
		LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" a_GrandChildren
		WHERE
			p."ParentID" = a_GrandChildren."ParentID" AND
			a_GrandChildren."ParentID" IS NOT NULL AND
			p."ChildID" = a_GrandChildren."ChildID" AND
			a_GrandChildren."ChildID" IS NOT NULL
	),
	p."ParentID",
	p."ChildID"
FROM
	"Child" p

