﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID"
FROM
	(
		SELECT DISTINCT
			ch."ParentID"
		FROM
			"Child" ch
	) t1
ORDER BY
	t1."ParentID"

