﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	ch."ParentID",
	ch."ChildID"
FROM
	"Parent" p,
	"Child" ch
WHERE
	p."ParentID" = ch."ParentID"

