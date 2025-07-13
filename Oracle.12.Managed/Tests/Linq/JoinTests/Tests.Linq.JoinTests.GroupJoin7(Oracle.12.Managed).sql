BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = 1

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" = 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID" - :n

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 1

