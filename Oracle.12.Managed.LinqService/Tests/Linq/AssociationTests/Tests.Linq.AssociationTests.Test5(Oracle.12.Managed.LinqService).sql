﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	ch."ChildID"
FROM
	"Parent" p
		INNER JOIN "Child" ch ON p."ParentID" = ch."ParentID"
WHERE
	ch."ParentID" < 4 OR ch."ParentID" >= 4

