﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	q."GrandChildID"
FROM
	"Parent" p
		INNER JOIN "GrandChild" q ON p."ParentID" = q."ParentID"

