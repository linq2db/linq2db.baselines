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
		OFFSET 2 
	) t2

