﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t2."ParentID"
		FROM
			(
				SELECT
					a_Parent."ParentID"
				FROM
					"Child" t1
						LEFT JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"
				FETCH NEXT 1 ROWS ONLY
			) t2
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID",
	a_Parent."ParentID" as "ParentID_1",
	a_Parent."Value1"
FROM
	"Child" t1
		LEFT JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransaction
