﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ChildID",
	Avg(t1."ParentID")
FROM
	"Child" t1
GROUP BY
	t1."ChildID"

