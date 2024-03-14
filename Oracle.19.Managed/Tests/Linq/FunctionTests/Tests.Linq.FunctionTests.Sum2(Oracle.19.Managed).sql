﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Sum(a_Children."ParentID" * a_Children."ChildID")
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID" AND a_Children."ParentID" > 2
	)
FROM
	"Parent" p

