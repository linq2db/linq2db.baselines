﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Child" ch
ORDER BY
	MOD(ch."ChildID", 2) DESC,
	ch."ChildID" DESC

