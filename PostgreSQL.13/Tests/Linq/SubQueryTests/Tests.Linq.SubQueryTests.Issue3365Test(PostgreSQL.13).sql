﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID"
FROM
	(
		SELECT
			(
				SELECT
					"a_GrandChildren"."ParentID"
				FROM
					"GrandChild" "a_GrandChildren"
				WHERE
					x."ParentID" = "a_GrandChildren"."ParentID" AND x."ChildID" = "a_GrandChildren"."ChildID"
				LIMIT 1
			) as "ParentID"
		FROM
			"Child" x
	) t1
ORDER BY
	t1."ParentID"

