﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ChildID"
FROM
	"Child" t1
WHERE
	(t1."ChildID" = 11 OR t1."ChildID" = 21)

