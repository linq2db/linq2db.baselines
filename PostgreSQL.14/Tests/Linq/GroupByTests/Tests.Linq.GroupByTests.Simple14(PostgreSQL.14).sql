﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."ParentID",
	d_1."ParentID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) m_1
		INNER JOIN (
			SELECT
				d."ParentID"
			FROM
				"Child" d
			GROUP BY
				d."ParentID"
		) d_1 ON m_1."ParentID" = d_1."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p

