﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Parent" t1
		LEFT JOIN "Child" c_1 ON t1."ParentID" = c_1."ParentID"

