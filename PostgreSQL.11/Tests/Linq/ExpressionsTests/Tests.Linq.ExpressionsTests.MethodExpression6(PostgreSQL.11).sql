﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID"
	)
FROM
	"Parent" p

