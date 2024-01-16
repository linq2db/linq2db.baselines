﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID",
	"c_1"."GrandChildID"
FROM
	"Child" "cp"
		LEFT JOIN "Parent" "a_Parent" ON "cp"."ParentID" = "a_Parent"."ParentID"
		INNER JOIN "GrandChild" "c_1" ON "a_Parent"."ParentID" = "c_1"."ParentID"

