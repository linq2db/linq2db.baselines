﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	g_1."ParentID",
	Count(*)
FROM
	"Child" g_1
		INNER JOIN "GrandChild" y ON g_1."ParentID" = y."ParentID" AND g_1."ChildID" = y."ChildID"
GROUP BY
	g_1."ParentID"

