﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	MAX(CASE
		WHEN "g_1"."ChildID" > 0 THEN "g_1"."ChildID"
		ELSE NULL
	END)
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

