﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Max("a_Children"."ParentID")
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID" AND "a_Children"."ParentID" < 0
	)
FROM
	"Parent" p

