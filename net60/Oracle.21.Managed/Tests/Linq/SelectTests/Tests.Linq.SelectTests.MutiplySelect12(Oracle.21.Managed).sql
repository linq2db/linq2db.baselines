﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	grandChild_1."ParentID",
	grandChild_1."ChildID",
	grandChild_1."GrandChildID"
FROM
	"GrandChild" grandChild_1,
	"Child" child_1
WHERE
	grandChild_1."ChildID" IS NOT NULL

