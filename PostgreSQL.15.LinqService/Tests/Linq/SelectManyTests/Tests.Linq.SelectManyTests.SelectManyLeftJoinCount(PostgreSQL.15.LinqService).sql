﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Count(*)
FROM
	"Parent" t1
		LEFT JOIN "Child" c_1 ON t1."ParentID" = c_1."ParentID"

