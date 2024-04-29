BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	MAX((
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"t1"."ParentID" = "a_Children"."ParentID"
	))
FROM
	"Parent" "t1"

