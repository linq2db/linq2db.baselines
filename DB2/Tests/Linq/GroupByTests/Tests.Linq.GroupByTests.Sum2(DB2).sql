﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Sum("t1"."ChildID")
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"

