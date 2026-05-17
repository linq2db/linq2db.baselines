-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."ParentID",
	"x"."ChildID",
	"x"."GrandChildID"
FROM
	"GrandChild" "x"
WHERE
	"x"."ParentID" IN (2)

-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."ParentID",
	"x"."ChildID",
	"x"."GrandChildID"
FROM
	"GrandChild" "x"
WHERE
	"x"."ParentID" IN (3)

