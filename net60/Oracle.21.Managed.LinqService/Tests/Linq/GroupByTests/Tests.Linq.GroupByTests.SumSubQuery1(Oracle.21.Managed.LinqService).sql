﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @n Int32
SET     @n = -1

SELECT
	Sum(ch."ParentID" - 2)
FROM
	"Child" ch
WHERE
	ch."ParentID" > :n
GROUP BY
	ch."ParentID" + 1,
	ch."ChildID"

