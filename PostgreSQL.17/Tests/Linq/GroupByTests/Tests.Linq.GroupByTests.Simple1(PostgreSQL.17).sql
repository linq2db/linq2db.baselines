﻿BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Child" t1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID"
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

