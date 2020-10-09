BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	(
		SELECT 
			Max("_"."ParentID")
		FROM
			"Child" "_"
		WHERE
			"p"."ParentID" = "_"."ParentID" AND "_"."ParentID" < 0
	)
FROM
	"Parent" "p"

