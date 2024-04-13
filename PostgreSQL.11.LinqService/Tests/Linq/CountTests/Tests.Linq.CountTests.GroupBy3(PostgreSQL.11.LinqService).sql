﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	g_2."ParentID",
	MIN(g_2."ChildID"),
	COUNT(CASE
		WHEN g_2."ChildID" > 25 THEN 1
		ELSE NULL
	END)
FROM
	(
		SELECT
			g_1."ParentID" + 1 as "ParentID",
			g_1."ChildID"
		FROM
			"Child" g_1
		WHERE
			g_1."ParentID" > 0
	) g_2
GROUP BY
	g_2."ParentID"

