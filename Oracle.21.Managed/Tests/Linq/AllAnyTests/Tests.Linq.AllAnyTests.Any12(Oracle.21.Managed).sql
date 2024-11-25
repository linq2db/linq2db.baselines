﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	EXISTS(
		SELECT
			1
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ChildID" > 3
	)

