﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" g_1
		WHERE
			(g_1."ChildID" = c_1."ChildID")
	)
FROM
	"Child" c_1

