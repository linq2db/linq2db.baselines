﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
WHERE
	ch."ChildID" >= 0 AND ch."ChildID" <= 100
FETCH NEXT 3 ROWS ONLY

