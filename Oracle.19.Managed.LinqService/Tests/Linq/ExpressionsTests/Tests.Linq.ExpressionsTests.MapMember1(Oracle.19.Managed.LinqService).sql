﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ChildID" > 0
	)
FROM
	"Parent" p

