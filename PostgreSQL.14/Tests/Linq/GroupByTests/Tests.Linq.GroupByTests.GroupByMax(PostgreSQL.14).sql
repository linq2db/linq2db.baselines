﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Max(t1."ParentID")
FROM
	"Child" t1
GROUP BY
	t1."ChildID"

