BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"pmp1"."ChildID"
FROM
	(
		SELECT
			"t1"."ParentID"
		FROM
			"Child" "t1"
		GROUP BY
			"t1"."ParentID"
	) "pmp",
	"Child" "pmp1"

