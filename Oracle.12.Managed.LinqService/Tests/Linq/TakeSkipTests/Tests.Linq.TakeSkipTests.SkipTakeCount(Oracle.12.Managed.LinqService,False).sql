﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	(
		SELECT
			t1."ParentID",
			t1."ChildID"
		FROM
			"Child" t1
		OFFSET 2 ROWS FETCH NEXT 5 ROWS ONLY 
	) t2

