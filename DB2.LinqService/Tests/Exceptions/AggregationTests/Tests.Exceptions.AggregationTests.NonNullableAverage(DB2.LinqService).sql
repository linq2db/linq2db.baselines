﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Avg("_"."ParentID")
FROM
	"Parent" "_"
WHERE
	"_"."ParentID" < 0

