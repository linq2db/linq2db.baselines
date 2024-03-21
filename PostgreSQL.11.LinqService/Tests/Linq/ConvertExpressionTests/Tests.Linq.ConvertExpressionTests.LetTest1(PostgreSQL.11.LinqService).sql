﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."ParentID"
			FROM
				"Child" "a_Children"
			WHERE
				p."ParentID" = "a_Children"."ParentID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	t1."ParentID" IS NOT NULL

