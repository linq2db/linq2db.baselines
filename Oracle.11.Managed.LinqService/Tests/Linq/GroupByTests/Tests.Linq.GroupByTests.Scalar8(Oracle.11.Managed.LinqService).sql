﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	Max(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

