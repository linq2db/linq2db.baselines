﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."ParentID" + p."ParentID"
FROM
	"Child" t
		INNER JOIN "Parent" p ON t."ParentID" = p."ParentID"
WHERE
	t."ParentID" + p."ParentID" > 2

