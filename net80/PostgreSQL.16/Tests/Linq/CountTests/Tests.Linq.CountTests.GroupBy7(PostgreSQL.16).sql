﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Count(*),
	Max(t1."ChildID")
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

