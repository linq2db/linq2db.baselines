﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" ch
		WHERE
			t1."ParentID" = ch."ParentID" AND ch."ChildID" > 20
	)
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

