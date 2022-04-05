﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Coalesce((
		SELECT
			"a_Parent"."Value1"
		FROM
			"Child" "ch"
				LEFT JOIN "Parent" "a_Parent" ON "ch"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"ch"."ChildID" = "c_1"."ChildID"
		FETCH FIRST 1 ROWS ONLY
	), "c_1"."ChildID")
FROM
	"Child" "c_1"

