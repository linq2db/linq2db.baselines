﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	o."ParentID",
	o."Value1",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" o
		CROSS APPLY (
			SELECT DISTINCT
				cg."ParentID",
				cg."ChildID"
			FROM
				"Child" cg
			WHERE
				o."ParentID" = cg."ParentID"
		) t1

