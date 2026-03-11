-- DB2 DB2.LUW DB2LUW

SELECT
	"pmp1"."ChildID"
FROM
	"Child" "pmp1",
	(
		SELECT DISTINCT
			"pmp"."ParentID"
		FROM
			"Child" "pmp"
	) "pmp_1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

