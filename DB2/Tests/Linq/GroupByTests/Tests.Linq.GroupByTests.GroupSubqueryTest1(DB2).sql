-- DB2 DB2.LUW DB2LUW

SELECT
	"pmp1"."ChildID"
FROM
	(
		SELECT DISTINCT
			"g_1"."ParentID"
		FROM
			"Child" "g_1"
	) "pmp",
	"Child" "pmp1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

