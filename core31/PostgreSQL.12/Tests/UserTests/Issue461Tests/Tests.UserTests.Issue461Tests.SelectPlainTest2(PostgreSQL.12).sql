﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	p."ParentID",
	t1."ParentID",
	t1.c1
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				c_1."ParentID" + 1 as c1,
				c_1."ParentID"
			FROM
				"Child" c_1
			LIMIT 1
		) t1 ON 1=1

