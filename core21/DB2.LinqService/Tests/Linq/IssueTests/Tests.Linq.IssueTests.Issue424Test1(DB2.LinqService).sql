﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT DISTINCT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"
ORDER BY
	"t1"."ParentID"
FETCH FIRST 1 ROWS ONLY

