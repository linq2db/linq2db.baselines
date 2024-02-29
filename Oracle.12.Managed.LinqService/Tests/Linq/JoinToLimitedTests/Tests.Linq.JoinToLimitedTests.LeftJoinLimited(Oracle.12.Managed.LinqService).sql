﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	o."ParentID",
	o."Value1",
	cg."ParentID",
	cg."ChildID"
FROM
	"Parent" o
		LEFT JOIN (
			SELECT
				t1."ParentID",
				t1."ChildID"
			FROM
				"Child" t1
			FETCH NEXT :take ROWS ONLY
		) cg ON o."ParentID" = cg."ParentID"

