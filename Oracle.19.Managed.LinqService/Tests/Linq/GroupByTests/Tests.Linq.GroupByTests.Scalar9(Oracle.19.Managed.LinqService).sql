﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" ch
		WHERE
			ch."ChildID" < 30 AND g_1."ParentID" = ch."ParentID"
	)
FROM
	"Child" g_1
GROUP BY
	g_1."ParentID"

