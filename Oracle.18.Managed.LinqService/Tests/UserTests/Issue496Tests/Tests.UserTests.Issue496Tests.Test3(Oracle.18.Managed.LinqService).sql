﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	a_Children."ChildID",
	a_Children."ParentID"
FROM
	"Parent" p
		INNER JOIN "Child" a_Children ON Cast(p."ParentID" as Number(19)) = a_Children."ParentID"
WHERE
	p."ParentID" = 1

