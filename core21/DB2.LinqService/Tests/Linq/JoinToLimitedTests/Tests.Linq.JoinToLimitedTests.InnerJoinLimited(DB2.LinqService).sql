BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"o"."ParentID", 
	"o"."Value1", 
	"cg"."ParentID", 
	"cg"."ChildID"
FROM
	"Parent" "o"
		INNER JOIN ( 
			SELECT 
				"t1"."ParentID", 
				"t1"."ChildID"
			FROM
				"Child" "t1"
			FETCH FIRST 1 ROWS ONLY
		) "cg" ON "o"."ParentID" = "cg"."ParentID"

