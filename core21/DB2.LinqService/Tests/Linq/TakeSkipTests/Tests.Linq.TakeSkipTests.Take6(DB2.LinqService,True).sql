﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."ParentID", 
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"
FETCH FIRST 3 ROWS ONLY

