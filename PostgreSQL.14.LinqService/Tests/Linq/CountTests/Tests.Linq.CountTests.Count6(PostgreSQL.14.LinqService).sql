﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as c1
		FROM
			"Child" t1
		GROUP BY
			t1."ParentID"
		HAVING
			t1."ParentID" > 2
	) t2

