﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"cp"."ParentID",
	"cp"."Value1"
FROM
	"Parent" "cp"
		INNER JOIN "Child" "c_1" ON "cp"."ParentID" = "c_1"."ParentID"

