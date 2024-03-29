﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			Max(id."ChildID")
		FROM
			"Child" id
		WHERE
			t1."ParentID" = id."ParentID" AND id."ChildID" > 0
	)
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

