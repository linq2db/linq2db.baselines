﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Key_1",
	Sum(t1."ParentID")
FROM
	(
		SELECT
			"selectParam"."ChildID" + 1 as "Key_1",
			"selectParam"."ParentID"
		FROM
			"Child" "selectParam"
	) t1
GROUP BY
	t1."Key_1"

