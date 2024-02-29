BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"t"."ParentID" = "t1"."ParentID"
	)
FROM
	"Parent" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."ParentID",
	(
		SELECT
			Count(*)
		FROM
			"Child" "t1"
		WHERE
			"t"."ParentID" = "t1"."ParentID"
	)
FROM
	"Parent" "t"

