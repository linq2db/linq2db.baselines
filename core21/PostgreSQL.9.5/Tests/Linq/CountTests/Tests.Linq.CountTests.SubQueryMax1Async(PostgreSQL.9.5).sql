﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Max(t1.cnt)
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					"Child" c_1
						LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
				WHERE
					"a_Parent"."ParentID" = p."ParentID"
			) as cnt
		FROM
			"Parent" p
	) t1

