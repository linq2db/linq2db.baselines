﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ChildID"
FROM
	"GrandChild" t1
GROUP BY
	t1."ParentID" + 1,
	t1."ChildID"

