﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" a_Children
		WHERE
			p."ParentID" = a_Children."ParentID" AND a_Children."ParentID" = p."ParentID" AND
			Cast(a_Children."ChildID" as Decimal) <> 0
	)
FROM
	"Parent" p
WHERE
	p."ParentID" <> 5

