BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t2."ParentID"
		FROM
			"Parent" t2
				CROSS APPLY (
					SELECT
						*
					FROM
						"Child" ch
					WHERE
						t2."ParentID" = ch."ParentID"
					ORDER BY
						ch."ChildID" DESC
					FETCH NEXT 1 ROWS ONLY
				) t1
		WHERE
			t2."ParentID" = 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t2."ParentID",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" t2
		CROSS APPLY (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				t2."ParentID" = ch."ParentID"
			ORDER BY
				ch."ChildID" DESC
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	t2."ParentID" = 1

