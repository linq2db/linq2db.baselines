BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 1

SELECT 
	"key_data_result"."ParentID", 
	"_gjd_c"."ParentID", 
	"_gjd_c"."ChildID"
FROM
	( 
		SELECT DISTINCT 
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = 1
	) "key_data_result"
		INNER JOIN "Child" "_gjd_c" ON "_gjd_c"."ParentID" = "key_data_result"."ParentID" + @p1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

