﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	selectParam."ChildID"
FROM
	"GrandChild" selectParam
GROUP BY
	selectParam."ParentID" + 1,
	selectParam."ChildID"

