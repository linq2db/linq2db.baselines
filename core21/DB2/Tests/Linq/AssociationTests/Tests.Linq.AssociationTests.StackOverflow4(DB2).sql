BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			"Parent" "t1"
		WHERE
			"p"."ParentID" = "t1"."Value1"
	)
FROM
	"Parent" "p"

