﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID" + 1
FROM
	"Parent" cp
		INNER JOIN "Child" t1 ON t1."ParentID" > 0 AND cp."ParentID" = t1."ParentID"

