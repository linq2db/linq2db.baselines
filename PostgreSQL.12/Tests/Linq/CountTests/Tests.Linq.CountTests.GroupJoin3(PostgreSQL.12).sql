﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
		WHERE
			t1."ParentID" = c_1."ParentID"
	)
FROM
	"Parent" t1

