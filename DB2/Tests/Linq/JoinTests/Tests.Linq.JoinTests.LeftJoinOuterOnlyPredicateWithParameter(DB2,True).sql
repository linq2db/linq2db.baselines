-- DB2 DB2.LUW DB2LUW
SELECT
	"c_1"."ChildID",
	"p"."ParentID"
FROM
	"Child" "c_1"
		LEFT JOIN "Parent" "p" ON "p"."Value1" = "c_1"."ParentID" AND ("c_1"."ChildID" <> 11 OR "c_1"."ChildID" = 21)

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

