﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" + 1 IN (
		SELECT
			c_1."ParentID"
		FROM
			"Child" c_1
	)

