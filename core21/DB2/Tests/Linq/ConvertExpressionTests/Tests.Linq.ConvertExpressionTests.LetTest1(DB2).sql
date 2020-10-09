BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	(
		SELECT 
			"p"."ParentID"
		FROM
			"Child" "p"
		WHERE
			"p_1"."ParentID" = "p"."ParentID"
		FETCH FIRST 1 ROWS ONLY
	)
FROM
	"Parent" "p_1"
WHERE
	(
		SELECT 
			1
		FROM
			"Child" "t1"
		WHERE
			"p_1"."ParentID" = "t1"."ParentID"
		FETCH FIRST 1 ROWS ONLY
	) IS NOT NULL

