BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	)
FROM
	"Parent" "p"

