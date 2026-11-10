-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."ParentID_1",
	"t1"."ParentID_1",
	"t1"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID",
			"p"."ParentID" as "ParentID_1",
			"p"."ParentID" + 100 as "ChildID"
		FROM
			"Parent" "p"
		UNION ALL
		SELECT
			"p_1"."ParentID",
			CAST(NULL AS Int) as "ParentID_1",
			CAST(NULL AS Int) as "ChildID"
		FROM
			"Parent" "p_1"
	) "t1"
UNION
SELECT
	"p_2"."ParentID",
	CAST(NULL AS Int),
	CAST(NULL AS Int),
	CAST(NULL AS Int)
FROM
	"Parent" "p_2"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

