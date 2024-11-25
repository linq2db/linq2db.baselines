﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	NOT EXISTS(
		SELECT
			1
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID" AND c_1."ParentID" <= 3
	)

