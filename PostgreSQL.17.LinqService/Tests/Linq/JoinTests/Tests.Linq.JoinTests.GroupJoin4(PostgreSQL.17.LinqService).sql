﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
		WHERE
			p."ParentID" = 3
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 3

