﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1",
	"Parent" "p"
WHERE
	"p"."ParentID" = "c_1"."ParentID" AND ("p"."Value1" NOT IN (1, 2, 3) OR "p"."Value1" IS NULL)

