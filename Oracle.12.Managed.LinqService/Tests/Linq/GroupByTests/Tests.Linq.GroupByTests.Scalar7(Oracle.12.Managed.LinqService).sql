﻿BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	MAX(id."ChildID")
FROM
	"Child" id
GROUP BY
	id."ParentID"

