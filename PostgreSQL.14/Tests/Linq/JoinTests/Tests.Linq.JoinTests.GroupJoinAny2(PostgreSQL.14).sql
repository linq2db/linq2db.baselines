﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	EXISTS(
		SELECT
			*
		FROM
			"Child" t1_1
		WHERE
			t1."ParentID" = t1_1."ParentID"
	)
FROM
	"Parent" t1

