﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	a_Parent."ParentID"
FROM
	"GrandChild" t1
		INNER JOIN "Parent" a_Parent ON t1."ParentID" = a_Parent."ParentID"
GROUP BY
	a_Parent."ParentID"
HAVING
	Count(*) > 2

