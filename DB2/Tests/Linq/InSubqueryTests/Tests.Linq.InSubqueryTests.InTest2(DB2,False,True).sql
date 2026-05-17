-- DB2 DB2.LUW DB2LUW

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID",
	"c_1"."GrandChildID"
FROM
	"GrandChild" "c_1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" "p"
		WHERE
			"c_1"."ParentID" = "p"."Value1" OR "c_1"."ParentID" IS NULL AND "p"."Value1" IS NULL
	)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"t1"."GrandChildID"
FROM
	"GrandChild" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

