BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Count(*)
FROM
	( 
		SELECT 
			"t1"."ParentID", 
			"t1"."Value1"
		FROM
			"Parent" "t1"
		ORDER BY
			"t1"."ParentID"
		FETCH FIRST 3 ROWS ONLY
	) "t2"

