﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" cp
				INNER JOIN "GrandChild" c_1 ON cp."ParentID" = c_1."ParentID" AND cp."ChildID" = c_1."ChildID"
		WHERE
			p."ParentID" = cp."ParentID"
	)
FROM
	"Parent" p

