﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	(
		SELECT
			Sum(c_1."ChildID")
		FROM
			"Child" c_1
		WHERE
			t."ParentID" = c_1."ParentID" AND c_1."ParentID" > 1 AND
			c_1."ParentID" < 10
	)
FROM
	"Parent" t

