﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID" AND a_Children."ChildID" > 0
	)
FROM
	"Parent" p

