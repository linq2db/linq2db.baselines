﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	MAX((
		SELECT
			COUNT(*)
		FROM
			"Child" c_1
				LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" = t1."ParentID"
	))
FROM
	"Parent" t1

