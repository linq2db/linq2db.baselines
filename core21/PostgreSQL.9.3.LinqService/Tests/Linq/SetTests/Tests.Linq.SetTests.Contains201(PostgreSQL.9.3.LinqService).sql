﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID" - 1
	)
FROM
	"Parent" p

