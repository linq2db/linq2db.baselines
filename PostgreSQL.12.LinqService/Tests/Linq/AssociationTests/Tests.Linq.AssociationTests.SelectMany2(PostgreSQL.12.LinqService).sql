﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		CROSS JOIN "Child" ch

