﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	g_2."ParentID"
FROM
	(
		SELECT
			g_1."ParentID" + 1 as "ParentID"
		FROM
			"Child" g_1
	) g_2
GROUP BY
	g_2."ParentID"

