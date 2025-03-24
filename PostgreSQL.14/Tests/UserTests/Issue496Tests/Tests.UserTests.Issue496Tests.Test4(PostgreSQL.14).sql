﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."ParentID",
	d."ChildID",
	d."ParentID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID"::BigInt = d."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
--  PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p

