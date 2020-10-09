BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t"."ParentID", 
	"t"."ChildID", 
	"gr"."ParentID", 
	"gr"."Value1"
FROM
	"Child" "t"
		LEFT JOIN "Parent" "gr" ON "t"."ParentID" = "gr"."ParentID"

