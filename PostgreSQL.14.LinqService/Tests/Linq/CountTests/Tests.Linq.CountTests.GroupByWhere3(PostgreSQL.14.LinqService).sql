﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID"
FROM
	"Child" t1
GROUP BY
	t1."ParentID"
HAVING
	Count(*) > 2 AND t1."ParentID" < 5

