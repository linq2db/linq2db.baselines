﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Value1",
	"p"."ParentID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"
WHERE
	"p"."Value1" = 1

