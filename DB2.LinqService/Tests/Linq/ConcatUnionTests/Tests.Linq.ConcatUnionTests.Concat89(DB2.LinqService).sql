﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"c_1"."ParentID"
FROM
	"Child" "c_1"
UNION ALL
SELECT
	"c_2"."ParentID",
	Cast(NULL as Int)
FROM
	"Parent" "c_2"

