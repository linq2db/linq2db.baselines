﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	o."ParentID",
	o."Value1"
FROM
	"Child" ch
		LEFT JOIN "Parent" o ON ch."ParentID" = o."ParentID" AND ch."ChildID" = 1

