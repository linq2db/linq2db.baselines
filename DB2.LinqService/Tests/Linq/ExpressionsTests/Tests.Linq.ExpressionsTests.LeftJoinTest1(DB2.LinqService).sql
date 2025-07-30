BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."ParentID",
	"t"."ChildID",
	"i"."ParentID",
	"i"."Value1"
FROM
	"Child" "t"
		LEFT JOIN "Parent" "i" ON "t"."ParentID" = "i"."ParentID"

