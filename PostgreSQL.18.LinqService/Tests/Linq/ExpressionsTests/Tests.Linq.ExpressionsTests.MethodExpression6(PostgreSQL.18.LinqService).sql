﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

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

