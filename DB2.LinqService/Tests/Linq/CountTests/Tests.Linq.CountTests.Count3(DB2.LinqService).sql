BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "p"

