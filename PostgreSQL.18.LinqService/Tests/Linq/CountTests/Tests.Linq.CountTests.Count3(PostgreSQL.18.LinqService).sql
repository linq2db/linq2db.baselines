﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" p

