﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID",
	"p"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID" OR EXISTS(
			SELECT
				*
			FROM
				"GrandChild" "y"
			WHERE
				"c_1"."ParentID" = "y"."ParentID" AND
				"y"."ParentID" IS NOT NULL AND
				"c_1"."ChildID" = "y"."ChildID" AND
				"y"."ChildID" IS NOT NULL AND
				"y"."ParentID" = "p"."ParentID" AND
				"y"."ParentID" IS NOT NULL
		)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID",
	"p"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "p",
	"Child" "c_1"
WHERE
	"p"."ParentID" = "c_1"."ParentID" OR EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "y"
		WHERE
			"c_1"."ParentID" = "y"."ParentID" AND
			"y"."ParentID" IS NOT NULL AND
			"c_1"."ChildID" = "y"."ChildID" AND
			"y"."ChildID" IS NOT NULL AND
			"y"."ParentID" = "p"."ParentID" AND
			"y"."ParentID" IS NOT NULL
	)

