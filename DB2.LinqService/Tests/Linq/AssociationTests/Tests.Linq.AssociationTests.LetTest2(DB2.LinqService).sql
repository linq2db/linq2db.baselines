BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"pp"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"pp"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "pp"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"pp"."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"pp"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "pp"

