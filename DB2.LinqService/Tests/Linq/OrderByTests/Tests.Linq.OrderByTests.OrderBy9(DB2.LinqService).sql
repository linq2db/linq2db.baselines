﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
ORDER BY
	"x"."ChildID" DESC,
	Mod("x"."ChildID", 2) DESC

