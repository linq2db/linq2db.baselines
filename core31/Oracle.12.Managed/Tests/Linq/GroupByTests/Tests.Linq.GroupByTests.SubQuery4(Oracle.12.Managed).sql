﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	selectParam."ChildID" + 1,
	Sum(selectParam."ParentID")
FROM
	"Child" selectParam
GROUP BY
	selectParam."ChildID" + 1

