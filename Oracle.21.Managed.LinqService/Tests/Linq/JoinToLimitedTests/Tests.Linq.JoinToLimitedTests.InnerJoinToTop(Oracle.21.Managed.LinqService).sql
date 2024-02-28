﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	o."ParentID",
	o."Value1",
	c_2."ParentID",
	c_2."ChildID"
FROM
	"Parent" o
		CROSS APPLY (
			SELECT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				o."ParentID" = c_1."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) c_2

