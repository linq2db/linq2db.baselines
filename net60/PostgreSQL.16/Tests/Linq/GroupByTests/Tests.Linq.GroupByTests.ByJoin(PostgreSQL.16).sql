﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Sum(c2."ChildID")
FROM
	"Child" c1
		INNER JOIN "Child" c2 ON c1."ChildID" = c2."ChildID" + 1
GROUP BY
	c1."ParentID"

