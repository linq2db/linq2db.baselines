﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	(
		SELECT
			Sum(c_1."ChildID")
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ChildID" <> p."ParentID" * 10 + 1
	)
FROM
	"Parent" p
WHERE
	p."ParentID" > 0

