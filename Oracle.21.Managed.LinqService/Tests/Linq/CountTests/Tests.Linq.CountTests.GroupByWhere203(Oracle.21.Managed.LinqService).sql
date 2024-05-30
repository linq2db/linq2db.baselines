﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	g_2."ParentID"
FROM
	(
		SELECT
			COUNT(CASE
				WHEN g_1."ChildID" > 20 THEN 1
				ELSE NULL
			END) as COUNT_1,
			g_1."ParentID"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
	) g_2
WHERE
	(g_2.COUNT_1 > 2 OR g_2."ParentID" > 2)

