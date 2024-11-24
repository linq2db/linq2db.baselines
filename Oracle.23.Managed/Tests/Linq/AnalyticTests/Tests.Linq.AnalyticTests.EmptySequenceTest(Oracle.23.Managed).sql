BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	m_1."ParentID",
	d_1."ParentID",
	d_1."Children"
FROM
	(
		SELECT DISTINCT
			c_1."ParentID"
		FROM
			"Parent" c_1
	) m_1
		CROSS APPLY (
			SELECT
				d."ParentID",
				LISTAGG(CAST(d."ChildID" AS VarChar(255)), ', ') WITHIN GROUP (ORDER BY ROWNUM) as "Children"
			FROM
				"Child" d
			WHERE
				m_1."ParentID" = d."ParentID"
			GROUP BY
				d."ParentID"
		) d_1

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	c_1."ParentID"
FROM
	"Parent" c_1

