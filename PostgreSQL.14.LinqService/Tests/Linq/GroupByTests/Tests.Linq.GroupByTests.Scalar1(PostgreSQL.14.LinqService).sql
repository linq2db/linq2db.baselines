﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Max(t1."ChildID")
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

