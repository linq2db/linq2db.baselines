﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" id
		WHERE
			t1."ParentID" = id."ParentID" AND id."ChildID" < 30
	)
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

