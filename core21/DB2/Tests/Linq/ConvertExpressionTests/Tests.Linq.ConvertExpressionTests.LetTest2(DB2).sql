BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	(
		SELECT 
			1
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
		FETCH FIRST 1 ROWS ONLY
	) IS NOT NULL

