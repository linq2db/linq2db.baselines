﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(CASE
		WHEN g_1."ChildID" > 30 THEN 1
		ELSE NULL
	END),
	COUNT(CASE
		WHEN g_1."ChildID" > 30 THEN 1
		ELSE NULL
	END),
	COUNT(*)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

