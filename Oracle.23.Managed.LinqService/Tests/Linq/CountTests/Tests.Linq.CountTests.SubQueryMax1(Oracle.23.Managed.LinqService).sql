﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	Max((
		SELECT
			Count(*)
		FROM
			"Child" t2
				LEFT JOIN "Parent" a_Parent ON t2."ParentID" = a_Parent."ParentID"
		WHERE
			(a_Parent."ParentID" = t1."ParentID")
	))
FROM
	"Parent" t1

