﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" t1
		LIMIT 5
	) t2

