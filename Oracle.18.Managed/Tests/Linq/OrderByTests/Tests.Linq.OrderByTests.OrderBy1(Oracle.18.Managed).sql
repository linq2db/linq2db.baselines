﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ParentID" DESC,
	t1."ChildID"

