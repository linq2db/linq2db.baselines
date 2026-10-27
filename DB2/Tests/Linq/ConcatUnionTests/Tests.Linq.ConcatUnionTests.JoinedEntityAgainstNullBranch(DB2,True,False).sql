-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"c_1"."ParentID",
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "t1"
		LEFT JOIN "Child" "c_1" ON "c_1"."ParentID" = "t1"."ParentID"
UNION
SELECT
	"p"."ParentID",
	CAST(NULL AS Int),
	CAST(NULL AS Int),
	CAST(NULL AS Int)
FROM
	"Parent" "p"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

