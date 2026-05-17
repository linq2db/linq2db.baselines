-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"t"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "t"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"t"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "t"

