﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT
			t1."ParentID"
		FROM
			"Parent" t1
		WHERE
			ROWNUM <= 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID"
FROM
	"Parent" t1
WHERE
	ROWNUM <= 1

BeforeExecute
DisposeTransaction
