﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ParentID" DESC,
	t1."ChildID"

