﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Count(*)
		FROM
			"GrandChild" a_GrandChildren1
		WHERE
			(a."ParentID" = a_GrandChildren1."ParentID") AND (a."ChildID" = a_GrandChildren1."ChildID")
	)
FROM
	"Child" a

