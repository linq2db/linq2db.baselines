﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" > 3 AND p."ParentID" = c_1."ParentID"
	)

