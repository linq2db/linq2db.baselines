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
	) "t1"

