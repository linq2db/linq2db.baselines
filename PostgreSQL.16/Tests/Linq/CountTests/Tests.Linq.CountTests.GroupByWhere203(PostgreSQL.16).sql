﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_2."Key_1"
FROM
	(
		SELECT
			g_1."ParentID" as "Key_1",
			COUNT(CASE
				WHEN g_1."ChildID" > 20 THEN 1
				ELSE NULL
			END) as cond
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2
WHERE
	g_2.cond > 2 OR g_2."Key_1" > 2

