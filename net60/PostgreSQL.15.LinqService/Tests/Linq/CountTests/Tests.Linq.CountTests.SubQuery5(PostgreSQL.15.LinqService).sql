﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Parent" p1
		WHERE
			p1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p

