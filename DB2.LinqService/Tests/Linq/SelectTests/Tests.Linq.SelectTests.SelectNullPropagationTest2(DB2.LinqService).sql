﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Parent" "t1"
		LEFT JOIN "Child" "c_1" ON "t1"."Value1" = "c_1"."ParentID"
		LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"

