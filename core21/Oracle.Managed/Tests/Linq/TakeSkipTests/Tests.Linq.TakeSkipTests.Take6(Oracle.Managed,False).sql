﻿BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
FETCH NEXT 3 ROWS ONLY

