﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
		LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."Value1" = 1 AND "a_Parent"."Value1" IS NOT NULL
FETCH NEXT 1 ROWS ONLY

