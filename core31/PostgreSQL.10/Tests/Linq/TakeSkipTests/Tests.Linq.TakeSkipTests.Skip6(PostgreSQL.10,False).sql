﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
OFFSET 3 

