-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1",
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "t1"
		LEFT JOIN "Child" "ch" ON "t1"."ParentID" = "ch"."ParentID"

