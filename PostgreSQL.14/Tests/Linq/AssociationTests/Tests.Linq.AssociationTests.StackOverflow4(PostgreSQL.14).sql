﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Parent" "a_Children"
		WHERE
			p."ParentID" = "a_Children"."Value1"
	)
FROM
	"Parent" p

