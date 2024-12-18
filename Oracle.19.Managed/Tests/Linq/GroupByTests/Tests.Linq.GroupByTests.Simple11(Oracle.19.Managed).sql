﻿BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."ParentID",
	m_1."ChildID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID" + 1 as "ParentID",
			t1."ChildID"
		FROM
			"GrandChild" t1
	) m_1
		INNER JOIN "GrandChild" d ON (m_1."ParentID" = d."ParentID" + 1 AND m_1."ParentID" IS NOT NULL AND d."ParentID" IS NOT NULL OR m_1."ParentID" IS NULL AND d."ParentID" IS NULL) AND (m_1."ChildID" = d."ChildID" AND m_1."ChildID" IS NOT NULL AND d."ChildID" IS NOT NULL OR m_1."ChildID" IS NULL AND d."ChildID" IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t2."ParentID",
	t2."ChildID"
FROM
	(
		SELECT
			t1."ParentID" + 1 as "ParentID",
			t1."ChildID"
		FROM
			"GrandChild" t1
	) t2
GROUP BY
	t2."ParentID",
	t2."ChildID"

