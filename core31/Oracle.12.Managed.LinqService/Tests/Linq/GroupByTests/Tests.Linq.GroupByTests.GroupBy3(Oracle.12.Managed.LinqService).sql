﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Nvl(selectParam."Value1", c_1."ChildID")
FROM
	"Parent" selectParam
		INNER JOIN "Child" c_1 ON selectParam."ParentID" = c_1."ParentID"
GROUP BY
	Nvl(selectParam."Value1", c_1."ChildID")

