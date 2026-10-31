-- DB2 DB2.LUW DB2LUW
SELECT
	"c_1"."ChildID",
	"p"."ParentID"
FROM
	"Child" "c_1"
		LEFT JOIN "Parent" "p" ON 1 = 0

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

