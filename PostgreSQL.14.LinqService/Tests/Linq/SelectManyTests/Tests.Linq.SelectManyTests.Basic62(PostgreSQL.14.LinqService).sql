﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID" + cp."ParentID"
FROM
	"Parent" cp
		CROSS JOIN "Child" t1
WHERE
	t1."ParentID" + cp."ParentID" > 1 AND cp."ParentID" = t1."ParentID"

