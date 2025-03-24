﻿BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	m_1."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			p."ParentID"
		FROM
			"Parent" p
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID"
FROM
	"Parent" p
ORDER BY
	p."ParentID"

