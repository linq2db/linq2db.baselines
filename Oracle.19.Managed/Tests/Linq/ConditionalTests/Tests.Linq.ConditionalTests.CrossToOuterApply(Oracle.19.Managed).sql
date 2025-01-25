BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	t1."ParentID",
	t1."ChildID",
	t2."ParentID",
	t2."ChildID"
FROM
	"Parent" p
		OUTER APPLY (
			SELECT
				a_Children."ParentID",
				a_Children."ChildID"
			FROM
				"Child" a_Children
			WHERE
				p."ParentID" = a_Children."ParentID"
			ORDER BY
				a_Children."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) t1
		OUTER APPLY (
			SELECT
				a_Children_1."ParentID",
				a_Children_1."ChildID"
			FROM
				"Child" a_Children_1
			WHERE
				p."ParentID" = a_Children_1."ParentID"
			ORDER BY
				a_Children_1."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) t2

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Parent" t1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

