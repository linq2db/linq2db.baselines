﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
ORDER BY
	x."ChildID" DESC,
	MOD(x."ChildID", 2)

