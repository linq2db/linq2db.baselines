BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"c_1"."ParentID", 
	"c_1"."ChildID"
FROM
	"Parent" "cp"
		INNER JOIN "Child" "c_1" ON "cp"."ParentID" = "c_1"."ParentID"

