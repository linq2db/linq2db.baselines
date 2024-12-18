﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x5."ParentID",
	x5."Value1",
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" x5
		LEFT JOIN "Child" y4 ON x5."ParentID" = y4."ParentID" AND x5."Value1" = y4."ParentID" AND x5."Value1" IS NOT NULL
		OUTER APPLY (
			SELECT
				y1."ParentID",
				y1."ChildID"
			FROM
				"Child" y1
			WHERE
				x5."ParentID" = y1."ParentID" AND x5."Value1" = y1."ParentID" AND
				x5."Value1" IS NOT NULL
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	x5."ParentID" = 1 AND x5."Value1" IS NOT NULL
ORDER BY
	x5."ParentID"

