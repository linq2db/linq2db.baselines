﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	"x5"."ParentID",
	"x5"."Value1",
	(
		SELECT FIRST 1
			"y1"."ParentID"
		FROM
			"Child" "y1"
		WHERE
			"x5"."ParentID" = "y1"."ParentID" AND "x5"."Value1" = "y1"."ParentID"
	),
	(
		SELECT FIRST 1
			"y1_1"."ChildID"
		FROM
			"Child" "y1_1"
		WHERE
			"x5"."ParentID" = "y1_1"."ParentID" AND "x5"."Value1" = "y1_1"."ParentID"
	)
FROM
	"Parent" "x5"
		LEFT JOIN "Child" "y4" ON "x5"."ParentID" = "y4"."ParentID" AND ("x5"."Value1" = "y4"."ParentID" OR "x5"."Value1" IS NULL AND "y4"."ParentID" IS NULL)
WHERE
	"x5"."ParentID" = 1 AND "x5"."Value1" IS NOT NULL
ORDER BY
	"x5"."ParentID"

