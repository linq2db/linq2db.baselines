﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"a_Parent"."Value1"
FROM
	"GrandChild" "g_1"
		INNER JOIN "Parent" "a_Parent" ON "g_1"."ParentID" = "a_Parent"."ParentID"
GROUP BY
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
HAVING
	COUNT(CASE
		WHEN "g_1"."ChildID" >= 20 THEN 1
		ELSE NULL
	END) > 2

