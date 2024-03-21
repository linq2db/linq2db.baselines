﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ChildID"
FROM
	"Parent" p
		OUTER APPLY (
			SELECT
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				ch."ParentID" = p."ParentID" AND ch."ChildID" = ch."ParentID" * 10 + 1
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	p."ParentID" <> 5

