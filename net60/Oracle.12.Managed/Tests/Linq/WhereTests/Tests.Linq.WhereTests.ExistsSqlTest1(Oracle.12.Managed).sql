﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = p."ParentID" + 100
	)

