﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"a_Middle"."ParentID",
	CASE
		WHEN "a_Middle"."ParentID" IS NOT NULL AND "a_Bottom"."ParentID" IS NOT NULL
			THEN 1
		ELSE 0
	END,
	"a_Bottom"."ParentID",
	"a_Bottom"."ChildID",
	"a_Bottom"."GrandChildID"
FROM
	"Parent" "t"
		LEFT JOIN "Child" "a_Middle" ON "t"."ParentID" = "a_Middle"."ParentID"
		LEFT JOIN "GrandChild" "a_Bottom" ON "a_Middle"."ChildID" = "a_Bottom"."ChildID"
WHERE
	"t"."ParentID" IN (1, 5)
ORDER BY
	"t"."ParentID"

