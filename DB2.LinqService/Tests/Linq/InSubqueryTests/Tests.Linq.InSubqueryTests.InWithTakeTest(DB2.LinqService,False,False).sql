﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" IS NOT NULL AND "c_1"."ParentID" IN (
		SELECT
			"t1"."ParentID"
		FROM
			(
				SELECT
					"v"."ParentID"
				FROM
					"Parent" "v"
				WHERE
					"v"."ParentID" IS NOT NULL
				FETCH NEXT 100 ROWS ONLY
			) "t1"
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

