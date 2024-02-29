BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "cp"
				INNER JOIN "GrandChild" "c_1" ON "cp"."ParentID" = "c_1"."ParentID" AND "cp"."ChildID" = "c_1"."ChildID"
		WHERE
			"p"."ParentID" = "cp"."ParentID"
	)
FROM
	"Parent" "p"

