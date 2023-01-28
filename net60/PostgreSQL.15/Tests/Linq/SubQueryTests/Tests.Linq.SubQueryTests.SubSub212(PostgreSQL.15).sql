﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" c_1
		WHERE
			c_1."ParentID" + 1 < p1."ID" AND c_1."ParentID" + 1 < p1."ID" AND
			(p1."ParentID" = c_1."ParentID" OR p1."ParentID" IS NULL AND c_1."ParentID" IS NULL)
	)
FROM
	(
		SELECT
			p2."ParentID" + 2 as "ID",
			"a_Parent"."ParentID"
		FROM
			"Child" p2
				LEFT JOIN "Parent" "a_Parent" ON p2."ParentID" = "a_Parent"."ParentID"
		WHERE
			p2."ParentID" > -1
	) p1
WHERE
	p1."ID" > 0

