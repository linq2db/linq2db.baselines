﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t2."ChildID"
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				t1."ChildID"
			FROM
				"Child" t1
			FETCH NEXT 1 ROWS ONLY
		) t2 ON 1=1

