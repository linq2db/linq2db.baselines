BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"key_data_result"."ParentID", 
	"key_data_result"."Value1", 
	"_c"."ParentID", 
	"_c"."ChildID"
FROM
	( 
		SELECT DISTINCT 
			"p"."ParentID", 
			"p"."Value1"
		FROM
			"Parent" "p"
	) "key_data_result"
		INNER JOIN "Child" "_c" ON "key_data_result"."ParentID" = "_c"."ParentID" AND "_c"."ParentID" > 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"

