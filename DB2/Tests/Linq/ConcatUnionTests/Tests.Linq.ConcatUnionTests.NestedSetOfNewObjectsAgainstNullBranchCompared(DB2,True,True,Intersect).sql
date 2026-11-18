-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Child",
	"t1"."Child",
	"t1"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID",
			CAST(NULL AS Int) as "Child",
			CAST(NULL AS Int) as "ChildID"
		FROM
			"Parent" "p"
		UNION
		SELECT
			"p_1"."ParentID",
			"p_1"."ParentID" as "Child",
			"p_1"."ParentID" + 100 as "ChildID"
		FROM
			"Parent" "p_1"
	) "t1"
INTERSECT
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

