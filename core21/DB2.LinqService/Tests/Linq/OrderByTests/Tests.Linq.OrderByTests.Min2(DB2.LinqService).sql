BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Min("t1"."ParentID")
FROM
	( 
		SELECT 
			"p"."ParentID"
		FROM
			"Parent" "p"
		ORDER BY
			"p"."ParentID"
		FETCH FIRST 3 ROWS ONLY
	) "t1"

