﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Max(ch."ChildID")
		FROM
			"Child" ch
		WHERE
			ch."ParentID" = p."ParentID"
	)
FROM
	"Parent" p
WHERE
	p."ParentID" <> 5

