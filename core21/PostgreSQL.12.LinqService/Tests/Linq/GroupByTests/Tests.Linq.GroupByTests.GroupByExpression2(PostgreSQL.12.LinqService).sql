﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Key_1",
	Avg(t1."ParentID")
FROM
	(
		SELECT
			"selectParam"."ChildID" as "Key_1",
			"selectParam"."ParentID"
		FROM
			"Child" "selectParam"
	) t1
GROUP BY
	t1."Key_1"

