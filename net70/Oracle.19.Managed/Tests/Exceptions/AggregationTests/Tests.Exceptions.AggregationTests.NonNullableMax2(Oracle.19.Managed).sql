﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	(
		SELECT
			Max(t1."ParentID")
		FROM
			"Child" t1
		WHERE
			p."ParentID" = t1."ParentID" AND t1."ParentID" < 0
	)
FROM
	"Parent" p

