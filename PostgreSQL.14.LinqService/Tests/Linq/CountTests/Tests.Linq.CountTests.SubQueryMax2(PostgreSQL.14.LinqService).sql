﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	MAX((
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			t1."ParentID" = "a_Children"."ParentID"
	))
FROM
	"Parent" t1

