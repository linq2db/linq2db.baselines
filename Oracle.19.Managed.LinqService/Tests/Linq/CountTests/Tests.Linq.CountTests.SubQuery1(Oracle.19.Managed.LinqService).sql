﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" c_1
		WHERE
			p."ParentID" = c_1."ParentID" AND c_1."ParentID" = p."ParentID" AND
			Cast(c_1."ChildID" as Decimal) <> 0
	)
FROM
	"Parent" p
WHERE
	p."ParentID" <> 5

