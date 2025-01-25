BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"pmp1"."ChildID"
FROM
	"Child" "pmp1",
	(
		SELECT
			"pmp"."ParentID"
		FROM
			"Child" "pmp"
		GROUP BY
			"pmp"."ParentID"
	) "pmp_1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

