﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	a_Parent."ParentID"
FROM
	"GrandChild" g_1
		INNER JOIN "Parent" a_Parent ON g_1."ParentID" = a_Parent."ParentID"
GROUP BY
	a_Parent."ParentID"
HAVING
	Count(*) > 2

