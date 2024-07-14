﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID"
FROM
	(
		SELECT
			(
				SELECT
					a_GrandChildren."ParentID"
				FROM
					"GrandChild" a_GrandChildren
				WHERE
					x."ParentID" = a_GrandChildren."ParentID" AND x."ChildID" = a_GrandChildren."ChildID"
				FETCH NEXT 1 ROWS ONLY
			) as "ParentID"
		FROM
			"Child" x
	) t1
ORDER BY
	t1."ParentID"

