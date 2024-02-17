﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Sum(a_Children."ChildID")
		FROM
			"Child" a_Children
		WHERE
			a_Children."ParentID" > 1 AND a_Children."ParentID" < 10 AND
			t."ParentID" = a_Children."ParentID"
	)
FROM
	"Parent" t

