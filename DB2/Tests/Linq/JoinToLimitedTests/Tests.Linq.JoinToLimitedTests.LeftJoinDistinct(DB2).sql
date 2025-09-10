BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"o"."ParentID",
	"o"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "o"
		LEFT JOIN "Child" "c_1" ON "o"."ParentID" = "c_1"."ParentID"

