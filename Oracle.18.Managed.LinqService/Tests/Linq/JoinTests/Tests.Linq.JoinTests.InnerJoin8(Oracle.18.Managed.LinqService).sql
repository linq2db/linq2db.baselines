﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	ch."ParentID",
	p."ParentID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON ch."ParentID" = p."ParentID"
WHERE
	ch."ParentID" + p."ParentID" > 2

