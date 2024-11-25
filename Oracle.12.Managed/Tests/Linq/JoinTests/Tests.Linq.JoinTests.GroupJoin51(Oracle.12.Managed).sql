﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
				CROSS APPLY (
					SELECT
						1 as "c1"
					FROM
						"Child" ch
					WHERE
						p."ParentID" = ch."ParentID"
					ORDER BY
						ch."ChildID" DESC
					FETCH NEXT 1 ROWS ONLY
				) t1
		WHERE
			p."ParentID" = 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		CROSS APPLY (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				p."ParentID" = ch."ParentID"
			ORDER BY
				ch."ChildID" DESC
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	p."ParentID" = 1

