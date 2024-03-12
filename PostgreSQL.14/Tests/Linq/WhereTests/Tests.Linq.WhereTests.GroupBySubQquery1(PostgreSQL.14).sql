﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
WHERE
	EXISTS(
		SELECT
			y."ParentID"
		FROM
			"Child" y
		GROUP BY
			y."ParentID"
		HAVING
			Max(y."ChildID") = x."ChildID"
	)

