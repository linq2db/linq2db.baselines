-- DB2 DB2.LUW DB2LUW

SELECT
	"t2"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID" + 1 as "ParentID",
			"t1"."ChildID"
		FROM
			"GrandChild" "t1"
	) "t2"

