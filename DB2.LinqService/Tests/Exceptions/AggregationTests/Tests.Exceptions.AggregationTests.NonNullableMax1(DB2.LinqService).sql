﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	MAX("t1"."ParentID")
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" < 0

