﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT DISTINCT
				c_1."ParentID"
			FROM
				"Child" c_1
			WHERE
				p."ParentID" = c_1."ParentID"
			LIMIT 1
		) t1 ON 1=1

