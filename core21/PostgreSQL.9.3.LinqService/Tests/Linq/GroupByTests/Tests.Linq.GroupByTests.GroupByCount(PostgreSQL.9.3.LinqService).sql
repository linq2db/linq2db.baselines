﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
	) t2

