BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t2"."ChildID_1"
FROM
	(
		SELECT
			"t1"."ParentID" + 1 as "ParentID",
			"t1"."ChildID",
			CAST(NULL AS Int) as "ChildID_1"
		FROM
			"GrandChild" "t1"
	) "t2"
GROUP BY
	"t2"."ParentID",
	"t2"."ChildID"

