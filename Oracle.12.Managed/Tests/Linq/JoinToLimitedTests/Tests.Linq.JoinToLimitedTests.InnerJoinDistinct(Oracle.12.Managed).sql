﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	o."ParentID",
	o."Value1",
	cg."ParentID",
	cg."ChildID"
FROM
	"Parent" o
		INNER JOIN (
			SELECT DISTINCT
				t1."ParentID",
				t1."ChildID"
			FROM
				"Child" t1
		) cg ON o."ParentID" = cg."ParentID"

