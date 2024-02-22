﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	a_Parent."Value1"
FROM
	"GrandChild" g_1
		INNER JOIN "Parent" a_Parent ON g_1."ParentID" = a_Parent."ParentID"
GROUP BY
	a_Parent."ParentID",
	a_Parent."Value1"
HAVING
	Count(*) > 2

