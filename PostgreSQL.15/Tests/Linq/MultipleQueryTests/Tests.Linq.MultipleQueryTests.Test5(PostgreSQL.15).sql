BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."Value1"
FROM
	(
		SELECT DISTINCT
			ch."ParentID"
		FROM
			"Child" ch
	) m_1
		INNER JOIN "Parent" d
			LEFT JOIN "Parent" "a_Parent" ON m_1."ParentID" = "a_Parent"."ParentID"
		ON d."ParentID" = "a_Parent"."ParentID"

BeforeExecute
DisposeTransaction
