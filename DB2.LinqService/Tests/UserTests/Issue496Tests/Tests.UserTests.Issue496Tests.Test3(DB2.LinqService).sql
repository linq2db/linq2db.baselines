﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ChildID",
	"c_1"."ParentID"
FROM
	"Parent" "_"
		INNER JOIN "Child" "c_1" ON BigInt("_"."ParentID") = "c_1"."ParentID"
WHERE
	"_"."ParentID" = 1

