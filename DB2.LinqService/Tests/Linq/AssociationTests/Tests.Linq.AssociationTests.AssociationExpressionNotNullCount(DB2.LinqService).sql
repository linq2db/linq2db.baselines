﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"NotNullParent" "p"
		INNER JOIN "NotNullChild" "a_ChildInner" ON "p".ID = "a_ChildInner"."ParentID"

