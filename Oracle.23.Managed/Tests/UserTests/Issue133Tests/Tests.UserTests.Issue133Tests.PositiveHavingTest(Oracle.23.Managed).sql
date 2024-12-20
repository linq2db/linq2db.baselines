﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*) * 100E0 / SUM(COUNT(*)) OVER(),
	SUM(t1."ParentID")
FROM
	"Child" t1
GROUP BY
	t1."ParentID"
HAVING
	SUM(t1."ParentID") <> 36

